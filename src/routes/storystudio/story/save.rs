use axum::{Extension, Json};
use reqwest::StatusCode;
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, StudioStory};

pub async fn save(
    Extension(ctx): Extension<ApiContext>,
    Json(mut story): Json<StudioStory>,
) -> Result<Json<StudioStory>, DError> {
    if story.uuid.is_some() {
        // UPDATE STORY
        sqlx::query("UPDATE stories SET active = $1, asset_id = $2, description = $3, title = $4 WHERE uuid = $5;")
        .bind(story.active)
        .bind(&story.asset_id)
        .bind(&story.description)
        .bind(&story.title)
        .bind(story.uuid)
        .execute(&ctx.detactive_db)
        .await
        .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

        return Ok(Json(story));
    }

    // NEW STORY
    let story_uuid = sqlx::query("INSERT INTO stories (uuid, active, asset_id, description, title) VALUES (DEFAULT, $1, $2, $3, $4) RETURNING uuid;")
    .bind(story.active)
    .bind(&story.asset_id)
    .bind(&story.description)
    .bind(&story.title)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?
    .try_get::<Uuid, _>("uuid")
    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

    story.uuid = Some(story_uuid);
    Ok(Json(story))
}
