use rand::Rng;
use serde::{Deserialize, Serialize};
use sqlx::{PgPool, Row};
use uuid::Uuid;

use crate::utils::geo::near;

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
        sqlx::query("SELECT * FROM stories WHERE uuid = $1;")
            .bind(uuid)
            .fetch_one(db_pool)
            .await
            .map_err(|_| DError::from(format!("Could not find story: {}.", uuid).as_str(), 0))
            .map(|row| DStory {
                uuid,
                image: row.get("image"),
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
        // Close old user story step with current timestamp
        sqlx::query(
            "UPDATE user_story_steps SET finished_at = CURRENT_TIMESTAMP WHERE user_story_uuid = $1 AND finished_at IS null;",
        )
        .bind(game_uuid)
        .execute(db_pool)
        .await
        .map_err(|_| DError::from("Failed to close previous step.", 0))?;

        // SQL Query for receiving nested step data
        let rows = sqlx::query(
            "SELECT * FROM steps
            JOIN decisions ON steps.uuid = decisions.step_input_uuid
            JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
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
                uuid: row.get("decisions.uuid"),
                step_input_uuid: row.get("decisions.step_input_uuid"),
                step_output_uuid: row.get("decisions.step_output_uuid"),
                title: row.get("decisions.title"),
            };
            decisions.push(decision);
        }

        let coordinates: DCoord = near(
            rows[0].get("waypoints.place_type"),
            user_coordinates.lat,
            user_coordinates.lon,
            rows[0].get("waypoints.place_override"),
        )
        .await
        .unwrap();

        // Builds DStep
        let step: DStep = DStep {
            uuid: step_uuid,
            description: rows[0].get("steps.description"),
            media_type: rows[0].get("steps.media_type"),
            src: rows[0].get("steps.src"),
            title: rows[0].get("steps.title"),
            decisions,
            waypoint: Some(DWaypoint {
                uuid: rows[0].get("waypoints.uuid"),
                coordinates: Some(coordinates.clone()),
            }),
        };

        // Open new step at user story steps
        sqlx::query("INSERT INTO user_story_steps (user_story_uuid, step_uuid, latitude, longitude) VALUES ($1, $2, $3, $4);")
            .bind(game_uuid)
            .bind(step_uuid)
            .bind(coordinates.lat)
            .bind(coordinates.lon)
            .execute(db_pool)
            .await
            .map_err(|_| DError::from("Failed to open new step in DB.", 0))
            .unwrap();

        Ok(step)
    }
}
