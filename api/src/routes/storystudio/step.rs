use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, MediaType};

#[derive(Serialize, Deserialize)]
pub struct PostBody {
    story_uuid: Uuid,
    waypoint_uuid: Option<Uuid>,
    description: String,
    media_type: Option<MediaType>,
    src: String,
    title: String,
}

#[derive(Serialize, Deserialize)]
pub struct PostResponse {
    uuid: Uuid,
}

pub async fn post_request(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<PostBody>,
) -> Result<Json<PostResponse>, DError> {
    return match sqlx::query(
        "INSERT INTO steps (story_uuid, waypoint_uuid, description, media_type, src, title) VALUES ($1, $2, $3, $4, $5, $6) RETURNING uuid"
    )
    .bind(body.story_uuid)
    .bind(body.waypoint_uuid)
    .bind(body.description)
    .bind(body.media_type)
    .bind(body.src)
    .bind(body.title)
    .fetch_one(&ctx.detactive_db)
    .await {
        Ok(result) => Ok(Json(PostResponse {
            uuid: result.get("uuid"),
        })),
        Err(_) => Err(DError::from("Could not upload step.", StatusCode::INTERNAL_SERVER_ERROR))
    };
}

#[derive(Serialize, Deserialize)]
pub struct PutBody {
    story_uuid: Uuid,
    waypoint_uuid: Option<Uuid>,
    description: String,
    media_type: Option<MediaType>,
    src: String,
    title: String,
}

#[derive(Serialize, Deserialize)]
pub struct PutResponse {
    uuid: Uuid,
}

pub async fn put_request(
    Path(uuid): Path<Uuid>,
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<PutBody>,
) -> StatusCode {
    return match sqlx::query(
        "UPDATE steps SET story_uuid = $1, waypoint_uuid = $2, description = $3, media_type = $4, src = $5, title = $6 WHERE uuid = $7;"
    )
    .bind(body.story_uuid)
    .bind(body.waypoint_uuid)
    .bind(body.description)
    .bind(body.media_type)
    .bind(body.src)
    .bind(body.title)
    .bind(uuid)
    .execute(&ctx.detactive_db)
    .await {
        Ok(_) => StatusCode::OK,
        Err(_) => StatusCode::INTERNAL_SERVER_ERROR
    };
}

pub async fn delete_request(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> StatusCode {
    return match sqlx::query("DELETE FROM steps WHERE uuid = $1")
        .bind(uuid)
        .execute(&ctx.detactive_db)
        .await
    {
        Ok(_) => StatusCode::OK,
        Err(_) => StatusCode::INTERNAL_SERVER_ERROR,
    };
}
