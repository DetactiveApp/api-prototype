use serde::{Deserialize, Serialize};
use uuid::Uuid;

use super::MediaType;

#[derive(Serialize, Deserialize)]
pub struct StudioState {
    pub story: StudioStory,
    pub steps: Vec<StudioStep>,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct StudioStory {
    pub uuid: Option<Uuid>,
    pub title: String,
    pub description: String,
    pub active: bool,
    pub asset_id: Option<String>,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct StudioStep {
    pub uuid: Option<Uuid>,
    pub title: String,
    pub description: String,
    pub media_type: Option<MediaType>,
    pub asset_id: Option<String>,
    pub waypoint: Option<StudioWaypoint>,
    pub decisions: Vec<StudioDecision>,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct StudioWaypoint {
    pub uuid: Option<Uuid>,
    pub place_type: String,
    pub place_override: bool,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct StudioDecision {
    pub uuid: Option<Uuid>,
    pub title: Option<String>,
    pub step_input_uuid: Uuid,
    pub step_output_uuid: Option<Uuid>,
}
