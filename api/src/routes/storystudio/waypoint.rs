use axum::{Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct PostBody {
    max_distance: i16,
    min_distance: i16,
    place_type: String,
}

#[derive(Serialize, Deserialize)]
pub struct PostResponse {
    uuid: Uuid,
}

pub async fn new_request(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<PostBody>,
) -> Result<Json<PostResponse>, StatusCode> {
    return match sqlx::query(
        "INSERT INTO waypoints (max_distance, min_distance, place_type) VALUES ($1, $2, $3) RETURNING uuid"
    )
    .bind(body.max_distance)
    .bind(body.min_distance)
    .bind(body.place_type)
    .fetch_one(&ctx.detactive_db)
    .await {
        Ok(result) => Ok(Json(PostResponse {
            uuid: result.get("uuid"),
        })),
        Err(_) => Err(StatusCode::INTERNAL_SERVER_ERROR)
    };
}

pub async fn put_request() {}

pub async fn delete_request() {}
