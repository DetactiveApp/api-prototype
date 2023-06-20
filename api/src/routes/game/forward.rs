use axum::{
    extract::{Path, Query},
    Extension, Json,
};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    lat: f64,
    lon: f64,
}

pub async fn get_request(
    Path(path): Path<Uuid>,
    Query(query): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<GetResponse>, StatusCode> {
    return Err(StatusCode::OK);
}
