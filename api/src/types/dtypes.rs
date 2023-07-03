use serde::{Deserialize, Serialize};
use uuid::Uuid;

use super::MediaType;

#[derive(Serialize, Deserialize)]
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
    pub step_input_uuid: Uuid,
    pub step_output_uuid: Uuid,
    pub title: String,
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
