use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, MediaType};

#[derive(Serialize, Deserialize)]
pub struct PostBody {
    waypoint_uuid: String,
    description: String,
    media_type: MediaType,
    src: String,
    title: String,
}

#[derive(Serialize, Deserialize)]
pub struct PostResponse {
    uuid: Uuid,
}

pub async fn post_request(
    Extension(ctx): Extension<ApiContext>,
    Path(path): Path<String>,
    Json(body): Json<PostBody>,
) -> Result<Json<PostResponse>, StatusCode> {
    return match sqlx::query(
        "INSERT INTO steps (story_uuid, waypoint_uuid, description, media_type, src, title) VALUES ($1, $2, $3, $4, $5, $6) RETURNING uuid"
    ).bind(Uuid::parse_str(&path).unwrap()).bind(Uuid::parse_str(&body.waypoint_uuid).unwrap()).bind(body.description).bind(body.media_type).bind(body.src).bind(body.title).fetch_one(&ctx.detactive_db).await {
        Ok(result) => Ok(Json(PostResponse {
            uuid: result.get("uuid"),
        })),
        Err(_) => Err(StatusCode::INTERNAL_SERVER_ERROR)
    };
}
