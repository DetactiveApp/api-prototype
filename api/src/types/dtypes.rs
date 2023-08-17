use serde::{Deserialize, Serialize};
use sqlx::{PgPool, Row};
use uuid::Uuid;

use super::{DError, MediaType};

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq)]
pub struct DCoord {
    pub lat: f64,
    pub lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct DStory {
    pub uuid: Uuid,
    pub image: String,
    pub title: String,
    pub description: String,
    pub distance: u8,
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
                image: row.try_get("image").unwrap_or("Not Found".to_string()),
                title: row.try_get("title").unwrap_or("Not Found".to_string()),
                description: row
                    .try_get("description")
                    .unwrap_or("Not Found".to_string()),
                distance: 0,
                duration: 0,
            })
    }
}

impl DStep {
    pub async fn from_db(uuid: Uuid, db_pool: &PgPool) -> Result<Self, DError> {
        sqlx::query(
            "SELECT * FROM steps
            JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
            WHERE steps.uuid = $1",
        )
        .bind(uuid)
        .fetch_one(db_pool)
        .await
        .map_err(|_| DError::from(format!("Could not find step: {}.", uuid).as_str(), 0))
        .map(|row| DStep {
            uuid: uuid,
            description: row
                .try_get("steps.description")
                .unwrap_or("Not Found".to_string()),
            media_type: row.try_get("steps.media_type").unwrap_or(None),
            src: row.try_get("steps.src").unwrap_or(None),
            title: row
                .try_get("steps.title")
                .unwrap_or("Not Found".to_string()),
            decisions: vec![],
            waypoint: row
                .try_get("waypoints.uuid")
                .map(|uuid| {
                    Some(DWaypoint {
                        uuid,
                        coordinates: None,
                    })
                })
                .unwrap_or(None),
        })
    }
}
