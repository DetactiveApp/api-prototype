use axum::{extract::Query, Extension, Json};
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, DStep};

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    story_uuid: Uuid,
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    game_uuid: Uuid,
}

pub async fn post_story_start(
    Query(params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DStep>, DError> {
    sqlx::query("INSERT INTO user_stories (story_uuid, user_uuid) VALUES ($1, $2);")
        .bind(params.story_uuid)
        .bind(Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap())
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| {
            DError::from(
                format!("Could not start story: {}.", params.story_uuid).as_str(),
                0,
            )
        });

    todo!()
}
