use crate::types::{ApiContext, DCoord, DError, DStep};
use axum::{extract::Query, Extension, Json};
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    to: Option<Uuid>,
}

pub async fn post_forward(
    Extension(ctx): Extension<ApiContext>,
    Query(params): Query<QueryParams>,
    Json(user_coordinates): Json<DCoord>,
) -> Result<Json<DStep>, DError> {
    let user_uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    let (game_uuid, step_uuid) = if let Some(params_to) = params.to {
        let row = sqlx::query("SELECT uuid AS game_uuid FROM user_stories WHERE user_uuid = $1")
            .bind(user_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
            .map_err(|_| DError::from("Could not receive step from existing story.", 0))?;

        (row.get("game_uuid"), params_to)
    } else {
        let row = sqlx::query(
            "SELECT user_stories.uuid AS game_uuid, decisions.step_output_uuid AS step_uuid
            FROM user_stories
            JOIN user_story_steps ON user_stories.uuid = user_story_steps.user_story_uuid
            JOIN decisions ON user_story_steps.step_uuid = decisions.step_input_uuid
            WHERE user_stories.user_uuid = $1
            AND user_story_steps.finished_at IS NULL;",
        )
        .bind(user_uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("Could not receive step from existing story.", 0))?;

        (row.get("game_uuid"), row.get("step_uuid"))
    };

    Ok(Json(
        DStep::from_db(step_uuid, game_uuid, user_coordinates, &ctx.detactive_db).await?,
    ))
}
