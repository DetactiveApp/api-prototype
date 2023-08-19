use rand::Rng;
use serde::{Deserialize, Serialize};
use sqlx::{PgPool, Row};
use uuid::Uuid;

use crate::utils::{contentful, geo::near};

use super::{DError, MediaType};

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq)]
pub struct DCoord {
    pub lat: f64,
    pub lon: f64,
}

/// Distance in meters and duration in minutes
#[derive(Serialize, Deserialize)]
pub struct DStory {
    pub uuid: Uuid,
    pub image: String,
    pub title: String,
    pub description: String,
    pub distance: u16,
    pub duration: u16,
}

#[derive(Serialize, Deserialize)]
pub struct DWaypoint {
    pub uuid: Uuid,
    pub coordinates: Option<DCoord>,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct DDecision {
    pub uuid: Uuid,
    pub step_input_uuid: Option<Uuid>,
    pub step_output_uuid: Option<Uuid>,
    pub title: String,
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
}

impl DStory {
    pub async fn from_db(uuid: Uuid, db_pool: &PgPool) -> Result<Self, DError> {
        let row = sqlx::query("SELECT * FROM stories WHERE uuid = $1;")
            .bind(uuid)
            .fetch_one(db_pool)
            .await
            .map_err(|_| DError::from(format!("Could not find story: {}.", uuid).as_str(), 0))?;

        let image_url = contentful::url(row.get("asset_id")).await?.unwrap();

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
                decisions.uuid AS decision_uuid,
                decisions.step_input_uuid AS decision_step_input_uuid,
                decisions.step_output_uuid AS decision_step_output_uuid,
                decisions.title AS decision_title,
                waypoints.uuid AS waypoint_uuid,
                waypoints.place_type AS waypoint_place_type,
                waypoints.place_override AS waypoint_place_override
            FROM steps
            JOIN decisions ON steps.uuid = decisions.step_input_uuid
            LEFT JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
            WHERE steps.uuid = $1;",
        )
        .bind(step_uuid)
        .fetch_all(db_pool)
        .await
        .map_err(|_| DError::from(format!("Could not find step: {}.", step_uuid).as_str(), 0))?;

        // Checks if necessary Step-Data is contained in DB
        if rows.is_empty() {
            return Err(DError::from(
                format!("Could not find step: {}.", step_uuid).as_str(),
                0,
            ));
        }

        // Saves all decisions for current step
        let mut decisions = Vec::new();
        for row in rows.iter() {
            let decision = DDecision {
                uuid: row.get("decision_uuid"),
                step_input_uuid: row.get("decision_step_input_uuid"),
                step_output_uuid: row.get("decision_step_output_uuid"),
                title: row.get("decision_title"),
            };
            decisions.push(decision);
        }

        // Check if story is finished
        if decisions
            .iter()
            .any(|decision| decision.step_output_uuid.is_none())
        {
            sqlx::query(
                "UPDATE user_stories SET finished_at = CURRENT_TIMESTAMP WHERE finished_at IS null AND deleted_at IS NOT null AND uuid = $1;",
                )
                .bind(game_uuid)
                .execute(db_pool)
                .await
                .map_err(|_| DError::from("Failed to complete story.", 0))?;

            return Err(DError::from("Story complete.", 999));
        }

        let coordinates: Option<DCoord> = near(
            rows[0].get("waypoint_place_type"),
            user_coordinates.lat,
            user_coordinates.lon,
            rows[0].get("waypoint_place_override"),
        )
        .await?;
        let src = contentful::url(rows[0].get("step_asset_id")).await?;

        let waypoint_uuid: Option<Uuid> = rows[0].get("waypoint_uuid");
        let waypoint: Option<DWaypoint> = waypoint_uuid.map(|uuid| DWaypoint { uuid, coordinates });

        // Builds DStep
        let step: DStep = DStep {
            uuid: step_uuid,
            description: rows[0].get("step_description"),
            media_type: rows[0].get("step_media_type"),
            src: src,
            title: rows[0].get("step_title"),
            decisions,
            waypoint: waypoint,
        };

        // Open new step at user story steps
        sqlx::query("INSERT INTO user_story_steps (user_story_uuid, step_uuid, latitude, longitude) VALUES ($1, $2, $3, $4);")
            .bind(game_uuid)
            .bind(step_uuid)
            .bind(user_coordinates.lat)
            .bind(user_coordinates.lon)
            .execute(db_pool)
            .await
            .map_err(|_| DError::from("Step already played.", 0))?;

        // Close old user story step with current timestamp
        sqlx::query(
            "UPDATE user_story_steps SET finished_at = CURRENT_TIMESTAMP WHERE user_story_uuid = $1 AND finished_at IS null AND step_uuid != $2;",
            )
            .bind(game_uuid)
            .bind(step_uuid)
            .execute(db_pool)
            .await
            .map_err(|_| DError::from("Failed to close previous step.", 0))?;

        Ok(step)
    }
}
