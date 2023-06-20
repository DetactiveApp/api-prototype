use axum::{
    extract::{Path, Query},
    Extension, Json,
};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::types::{ApiContext, MediaType};

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
    to: Option<Uuid>,
}

#[derive(Serialize, Deserialize)]
pub struct Waypoint {
    uuid: Uuid,
    lat: f64,
    lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct Decision {
    uuid: Uuid,
    step_input_uuid: Uuid,
    step_output_uuid: Uuid,
    title: String,
}

#[derive(Serialize, Deserialize)]
pub struct Step {
    uuid: Uuid,
    description: String,
    media_type: MediaType,
    src: String,
    title: String,
    decisions: Vec<Decision>,
    waypoint: Waypoint,
}

pub async fn get_request(
    Path(story_uuid): Path<Uuid>,
    Query(params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Step>, StatusCode> {
    return Err(StatusCode::NOT_IMPLEMENTED);
}
