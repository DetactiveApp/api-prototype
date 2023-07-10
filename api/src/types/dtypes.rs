use serde::{Deserialize, Serialize};
use sqlx::{postgres::PgRow, Row};
use uuid::Uuid;

use super::MediaType;

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct DCoord {
    pub lat: f64,
    pub lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct DWaypoint {
    pub uuid: Uuid,
    pub coordinates: DCoord,
}

#[derive(Serialize, Deserialize)]
pub struct DDecision {
    pub uuid: Uuid,
    pub step_input_uuid: Option<Uuid>,
    pub step_output_uuid: Option<Uuid>,
    pub title: String,
}

impl DDecision {
    pub fn from(row: &PgRow) -> Self {
        Self {
            uuid: row.get("uuid"),
            step_input_uuid: row.get("step_input_uuid"),
            step_output_uuid: row.get("step_output_uuid"),
            title: row.get("title"),
        }
    }
}

#[derive(Serialize, Deserialize)]
pub struct DStep {
    pub uuid: Uuid,
    pub description: String,
    pub media_type: MediaType,
    pub src: String,
    pub title: String,
    pub decisions: Vec<DDecision>,
    pub waypoint: Option<DWaypoint>,
}

impl DStep {
    pub fn from(row: &PgRow, decisions: Vec<DDecision>, waypoint: Option<DWaypoint>) -> Self {
        Self {
            uuid: row.get("uuid"),
            description: row.get("description"),
            media_type: row.get("media_type"),
            src: row.get("src"),
            title: row.get("title"),
            decisions: decisions,
            waypoint: waypoint,
        }
    }
}
