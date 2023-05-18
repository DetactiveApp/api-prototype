use axum::{Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct PostBody {
    title: String,
    description: String,
    active: bool,
}

#[derive(Serialize, Deserialize)]
pub struct PostResponse {
    uuid: Uuid,
}

pub async fn post_request(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<PostBody>,
) -> Result<Json<PostResponse>, StatusCode> {
    return match sqlx::query(
        "INSERT INTO stories (description, title, active) VALUES ($1, $2, $3) RETURNING uuid",
    )
    .bind(body.description)
    .bind(body.title)
    .bind(body.active)
    .fetch_one(&ctx.detactive_db)
    .await
    {
        Ok(result) => Ok(Json(PostResponse {
            uuid: result.get("uuid"),
        })),
        Err(_) => Err(StatusCode::INTERNAL_SERVER_ERROR),
    };
}
