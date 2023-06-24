use axum::{extract::Query, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    story_uuid: Uuid,
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    game_uuid: Uuid,
}

pub async fn get_request(
    Query(params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<GetResponse>, StatusCode> {
    let game_uuid = sqlx::query(
        "INSERT INTO player_stories (story_uuid, player_uuid) VALUES ($1, $2) RETURNING uuid;",
    )
    .bind(params.story_uuid)
    .bind(Uuid::new_v4())
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
    .get("uuid");

    Ok(Json(GetResponse { game_uuid }))
}
