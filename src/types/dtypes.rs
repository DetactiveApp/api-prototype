use rand::Rng;
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::{PgPool, Row};
use uuid::Uuid;

use crate::utils::{
    contentful,
    geo::{d_angle, near},
};

use super::{DError, EndingType, MediaType, RouteMode};

#[derive(Debug, Serialize, Deserialize, Clone, Copy)]
pub struct DUser {
    pub uuid: Uuid,
}

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq)]
pub struct DCoord {
    pub lat: f64,
    pub lon: f64,
}

/// Distance in meters and duration in minutes
#[derive(Serialize, Deserialize)]
pub struct DStory {
    pub uuid: Uuid,
    pub image: Option<String>,
    pub title: String,
    pub description: String,
    pub distance: u16,
    pub duration: u16,
}

#[allow(dead_code)]
impl DStory {
    pub async fn from_db(uuid: Uuid, db_pool: &PgPool) -> Result<Self, DError> {
        let row = sqlx::query("SELECT * FROM stories WHERE uuid = $1;")
            .bind(uuid)
            .fetch_one(db_pool)
            .await
            .map_err(|_| {
                DError::from(
                    format!("Could not find story: {}.", uuid).as_str(),
                    StatusCode::INTERNAL_SERVER_ERROR,
                )
            })?;

        let image_url = contentful::url(row.get("asset_id")).await?;

        Ok(DStory {
            uuid,
            image: image_url,
            title: row.get("title"),
            description: row.get("description"),
            distance: rand::thread_rng().gen_range(800..5000),
            duration: rand::thread_rng().gen_range(5..40),
        })
    }
}

#[derive(Serialize, Deserialize)]
pub struct DWaypoint {
    pub uuid: Uuid,
    pub coordinates: Option<DCoord>,
}

impl DWaypoint {
    pub async fn from_db(
        step_uuid: Uuid,
        coordinates: DCoord,
        db_pool: &PgPool,
    ) -> Result<Option<Self>, DError> {
        match sqlx::query(
            "SELECT
                waypoints.uuid,
                waypoints.place_type,
                waypoints.place_override
            FROM steps
            JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
            WHERE steps.uuid = $1;",
        )
        .bind(step_uuid)
        .fetch_one(db_pool)
        .await
        {
            Ok(row) => Ok(Some(DWaypoint {
                uuid: row.get("uuid"),
                coordinates: near(
                    &coordinates,
                    fastrand::f64() * 360.0,
                    RouteMode::Track
                )
                .await?,
            })),
            _ => Ok(None),
        }
    }
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct DDecision {
    pub uuid: Uuid,
    pub step_input_uuid: Option<Uuid>,
    pub step_output_uuid: Option<Uuid>,
    pub title: String,
}

impl DDecision {
    pub async fn from_db(step_uuid: Uuid, db_pool: &PgPool) -> Result<Vec<Self>, DError> {
        Ok(sqlx::query(
            "SELECT
                decisions.uuid,
                decisions.step_input_uuid,
                decisions.step_output_uuid,
                decisions.title
            FROM steps
            JOIN decisions ON steps.uuid = decisions.step_input_uuid
            WHERE steps.uuid = $1;",
        )
        .bind(step_uuid)
        .fetch_all(db_pool)
        .await
        .map_err(|_| DError::from("Failed to fetch decisions.", StatusCode::NOT_FOUND))?
        .iter()
        .map(|row| DDecision {
            uuid: row.get("uuid"),
            step_input_uuid: row.get("step_input_uuid"),
            step_output_uuid: row.get("step_output_uuid"),
            title: row.get("title"),
        })
        .collect())
    }
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct DStep {
    pub uuid: Uuid,
    pub description: String,
    pub media_type: Option<MediaType>,
    pub src: Option<String>,
    pub title: String,
    pub decisions: Vec<DDecision>,
    pub waypoint: Option<DWaypoint>,
    pub ending: Option<EndingType>,
}

impl DStep {
    pub async fn from_db(
        step_uuid: Uuid,
        game_uuid: Uuid,
        user_coordinates: DCoord,
        db_pool: &PgPool,
    ) -> Result<Self, DError> {
        // SQL Query for receiving nested step data
        let rows = sqlx::query(
            "SELECT steps.asset_id AS step_asset_id,
                steps.description AS step_description,
                steps.media_type AS step_media_type,
                steps.title AS step_title,
                steps.ending AS step_ending,
                waypoints.uuid AS waypoint_uuid,
                waypoints.place_type AS waypoint_place_type,
                waypoints.place_override AS waypoint_place_override
            FROM steps
            LEFT JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
            WHERE steps.uuid = $1;",
        )
        .bind(step_uuid)
        .fetch_one(db_pool)
        .await
        .map_err(|_| {
            DError::from(
                format!("Could not find step: {}.", step_uuid).as_str(),
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?;

        let decisions: Vec<DDecision> =
            sqlx::query("SELECT * FROM decisions WHERE step_input_uuid = $1;")
                .bind(step_uuid)
                .fetch_all(db_pool)
                .await
                .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?
                .iter()
                .map(|row| DDecision {
                    uuid: row.get("uuid"),
                    step_input_uuid: row.get("step_input_uuid"),
                    step_output_uuid: row.get("step_output_uuid"),
                    title: row.get("title"),
                })
                .collect();

        let coordinates = match sqlx::query(
            "SELECT user_story_steps.latitude, user_story_steps.longitude FROM user_story_steps
        LEFT JOIN steps ON steps.uuid = user_story_steps.step_uuid
        WHERE user_story_uuid = $1 AND steps.waypoint_uuid IS NOT NULL;",
        )
        .bind(game_uuid)
        .fetch_one(db_pool)
        .await
        {
            Ok(row) => {
                let previous_origin = sqlx::query("SELECT user_story_steps.latitude, user_story_steps.longitude FROM user_story_steps
                LEFT JOIN steps ON steps.uuid = user_story_steps.step_uuid
                LEFT JOIN decisions ON decisions.step_output_uuid = user_story_steps.step_uuid AND decisions.step_input_uuid = steps.uuid
                WHERE user_story_uuid = $1 AND steps.waypoint_uuid IS NOT NULL;")
                .bind(game_uuid)
                .fetch_one(db_pool)
                .await
                .map(|row| 
                    DCoord {
                        lat: row.get("latitude"),
                        lon: row.get("longitude")
                    } ).unwrap();

                let previous_destination
                 = DCoord {
                    lat: row.get("latitude"),
                    lon: row.get("longitude"),
                };
                near(
                    &previous_origin,
                    d_angle(&previous_origin, &previous_destination),
                    RouteMode::Track,
                )
                .await
                .map_err(|_| DError::from("Failed to find waypoint.", StatusCode::NOT_FOUND))?
            }
            _ => near(
                &user_coordinates,
                fastrand::f64() * 360.0,
                RouteMode::Track
            )
            .await
            .map_err(|_| DError::from("Failed to find waypoint.", StatusCode::NOT_FOUND))?,
        };

        let src = contentful::url(rows.get("step_asset_id")).await?;

        let waypoint_uuid: Option<Uuid> = rows.get("waypoint_uuid");
        let waypoint: Option<DWaypoint> = waypoint_uuid.map(|uuid| DWaypoint {
            uuid,
            coordinates: coordinates,
        });

        // Builds DStep
        let step: DStep = DStep {
            uuid: step_uuid,
            description: rows.get("step_description"),
            media_type: rows.get("step_media_type"),
            src,
            title: rows.get("step_title"),
            decisions,
            waypoint,
            ending: rows.get("step_ending"),
        };

        if sqlx::query("SELECT EXISTS(SELECT 1 FROM user_story_steps WHERE user_story_uuid = $1 AND step_uuid = $2);")
            .bind(game_uuid)
            .bind(step_uuid)
            .fetch_one(db_pool)
            .await
            .map_err(|err| DError::from(&format!("Failed to check if step was already played: {}", err.to_string()), StatusCode::INTERNAL_SERVER_ERROR))?
            .get::<bool, usize>(0) {
                sqlx::query("UPDATE user_story_steps SET latitude = $1, longitude = $2, updated_at = CURRENT_TIMESTAMP, finished_at = null WHERE user_story_uuid = $3 AND step_uuid = $4;")
                .bind(user_coordinates.lat)
                .bind(user_coordinates.lon)
                .bind(game_uuid)
                .bind(step_uuid)
                .execute(db_pool)
                .await
                .map_err(|err| DError::from(&format!("Failed to update user_story_step: {}", err.to_string()), StatusCode::INTERNAL_SERVER_ERROR))?;
        } else {
            sqlx::query("INSERT INTO user_story_steps (user_story_uuid, step_uuid, latitude, longitude) VALUES ($1, $2, $3, $4);")
            .bind(game_uuid)
            .bind(step_uuid)
            .bind(user_coordinates.lat)
            .bind(user_coordinates.lon)
            .execute(db_pool)
            .await
            .map_err(|err| DError::from(&format!("Failed to insert user_story_step: {}", err.to_string()), StatusCode::INTERNAL_SERVER_ERROR))?;
        }

        // Close old user story step with current timestamp
        sqlx::query(
            "UPDATE user_story_steps SET finished_at = CURRENT_TIMESTAMP WHERE user_story_uuid = $1 AND finished_at IS null AND step_uuid != $2;",
            )
            .bind(game_uuid)
            .bind(step_uuid)
            .execute(db_pool)
            .await
            .map_err(|_| DError::from("Failed to close previous step.", StatusCode::INTERNAL_SERVER_ERROR))?;

        Ok(step)
    }
}
