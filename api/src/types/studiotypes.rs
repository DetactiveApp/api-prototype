use serde::{Deserialize, Serialize};
use uuid::Uuid;

use super::MediaType;

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct StudioStory {
    pub uuid: Uuid,
    pub title: String,
    pub description: String,
    pub active: bool,
    pub asset_id: String,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct StudioStep {
    pub uuid: Uuid,
    pub title: String,
    pub description: String,
    pub media_type: MediaType,
    pub asset_id: String,
}

#[derive(Serialize, Deserialize)]
pub struct StudioState {
    pub story: StudioStory,
    pub steps: Vec<StudioStep>,
}
