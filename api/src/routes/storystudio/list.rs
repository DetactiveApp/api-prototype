use axum::Json;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::types::DError;

#[derive(Serialize, Deserialize)]
pub struct StoryTitleUuid {
    title: String,
    uuid: Uuid,
}

pub async fn get_story_list() -> Result<Json<Vec<StoryTitleUuid>>, DError> {
    todo!()
}
