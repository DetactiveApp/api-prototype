use crate::types::{ApiContext, DCoord, DError, DStep};
use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct Body {
    lat: f64,
    lon: f64,
}

pub async fn post_game_next_step(
    Extension(ctx): Extension<ApiContext>,
    Path((story_uuid, step_uuid)): Path<(Uuid, Uuid)>,
    Json(body): Json<Body>,
) -> Result<Json<DStep>, DError> {
    let user_uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    let game_uuid = sqlx::query(
        "SELECT uuid AS game_uuid FROM user_stories WHERE story_uuid = $1 AND user_uuid = $2;",
    )
    .bind(story_uuid)
    .bind(user_uuid)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| {
        tokio::task::spawn(finish_story(user_uuid, ctx.clone()));
        DError::from("No content.", StatusCode::NO_CONTENT)
    })?
    .try_get("game_uuid")
    .map_err(|_| {
        tokio::task::spawn(finish_story(user_uuid, ctx.clone()));
        DError::from("No content.", StatusCode::NO_CONTENT)
    })?;

    let step = DStep::from_db(
        step_uuid,
        game_uuid,
        DCoord {
            lat: body.lat,
            lon: body.lon,
        },
        &ctx.detactive_db,
    )
    .await?;

    if step
        .decisions
        .iter()
        .any(|decision| decision.step_output_uuid.is_none())
    {
        finish_story(user_uuid, ctx).await?;
    }

    Ok(Json(step))
}

async fn finish_story(user_uuid: Uuid, ctx: ApiContext) -> Result<(), DError> {
    sqlx::query(
        "UPDATE user_stories SET finished_at = CURRENT_TIMESTAMP WHERE deleted_at IS null AND finished_at IS null AND user_uuid = $1;",
    )
    .bind(user_uuid)
    .execute(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Failed to close previous step.", StatusCode::INTERNAL_SERVER_ERROR))?;

    Ok(())
}
