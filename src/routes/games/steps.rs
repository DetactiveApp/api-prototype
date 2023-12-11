use crate::types::{ApiContext, DCoord, DError, DStep};
use axum::{extract::Path, Extension, Json};
use chrono::NaiveDateTime;
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct Body {
    lat: f64,
    lon: f64,
}

// FORWARD
pub async fn post_game_next_step(
    Extension(ctx): Extension<ApiContext>,
    Path((story_uuid, step_uuid)): Path<(Uuid, Uuid)>,
    Json(body): Json<Body>,
) -> Result<Json<DStep>, DError> {
    let user_uuid: Uuid = ctx.user.unwrap().uuid;

    let game_uuid = sqlx::query(
        "SELECT uuid AS game_uuid FROM user_stories WHERE story_uuid = $1 AND user_uuid = $2 AND finished_at IS null AND deleted_at IS null;",
    )
    .bind(story_uuid)
    .bind(user_uuid)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| {
        DError::from("No content.", StatusCode::NO_CONTENT)
    })?
    .get::<Uuid, &str>("game_uuid");

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
    .map_err(|err| DError::from(&(String::from("Failed to close previous step: ") + &err.to_string()), StatusCode::INTERNAL_SERVER_ERROR))?;
    Ok(())
}

#[derive(Serialize, Deserialize)]
pub struct StepCard {
    title: String,
    description: String,
    finished_at: Option<NaiveDateTime>,
}

pub async fn get_stories_history(
    Extension(ctx): Extension<ApiContext>,
    Path(story_uuid): Path<Uuid>,
) -> Result<Json<Vec<StepCard>>, DError> {
    let user_uuid: Uuid = ctx.user.unwrap().uuid;

    let step_cards: Vec<StepCard> = sqlx::query(
        "SELECT steps.title, steps.description, user_story_steps.finished_at FROM user_stories
    LEFT JOIN user_story_steps ON user_stories.uuid = user_story_steps.user_story_uuid
    LEFT JOIN steps ON user_story_steps.step_uuid = steps.uuid
    WHERE user_stories.deleted_at IS null
    AND user_stories.finished_at IS null
    AND user_stories.user_uuid = $1
    AND user_stories.story_uuid = $2;",
    )
    .bind(user_uuid)
    .bind(story_uuid)
    .fetch_all(&ctx.detactive_db)
    .await
    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?
    .iter()
    .map(|row| StepCard {
        title: row.get("title"),
        description: row.get("description"),
        finished_at: row.get("finished_at"),
    })
    .collect();

    Ok(Json(step_cards))
}
