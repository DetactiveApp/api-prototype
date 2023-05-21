use axum::{extract::Path, Extension, Json};
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
        "INSERT INTO stories (title, description, active) VALUES ($1, $2, $3) RETURNING uuid",
    )
    .bind(body.title)
    .bind(body.description)
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

#[derive(Serialize, Deserialize)]
pub struct PutBody {
    title: String,
    description: String,
    active: bool,
}

pub async fn put_request(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
    Json(body): Json<PutBody>,
) -> StatusCode {
    return match sqlx::query(
        "UPDATE stories SET title = $1, description = $2, active = $3 WHERE uuid = $4;",
    )
    .bind(body.title)
    .bind(body.description)
    .bind(body.active)
    .bind(uuid)
    .execute(&ctx.detactive_db)
    .await
    {
        Ok(_) => StatusCode::OK,
        Err(err) => StatusCode::INTERNAL_SERVER_ERROR,
    };
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    title: String,
    description: String,
    active: bool,
}

pub async fn get_request(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> Result<Json<GetResponse>, StatusCode> {
    return match sqlx::query("SELECT description, title, active FROM stories WHERE uuid = $1;")
        .bind(uuid)
        .fetch_one(&ctx.detactive_db)
        .await
    {
        Ok(result) => Ok(Json(GetResponse {
            title: result.get("title"),
            description: result.get("description"),
            active: result.get("active"),
        })),
        Err(_) => Err(StatusCode::INTERNAL_SERVER_ERROR),
    };
}
