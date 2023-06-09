use axum::{extract::Query, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::{types::ApiContext, utils::geo::get_local_location_tags};

#[derive(Serialize, Deserialize)]
pub struct GetQuery {
    lat: f64,
    lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    uuid: Uuid,
    title: String,
    description: String,
    distance: u8,
    duration: u16,
    tags: Vec<String>,
    difficulty: f32,
}

pub async fn get_request(
    Query(query): Query<GetQuery>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<String>>, StatusCode> {
    let location_tags = get_local_location_tags(&query.lat, &query.lon).await?;

    Ok(Json(location_tags))
}
