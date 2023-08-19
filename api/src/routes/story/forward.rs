use crate::types::{ApiContext, DCoord, DError, DStep};
use axum::{Extension, Json};
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct Body {
    lat: f64,
    lon: f64,
    to: Option<Uuid>,
}

pub async fn post_forward(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<Body>,
) -> Result<Json<DStep>, DError> {
    let user_uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    let (game_uuid, step_uuid) = if let Some(body_to) = body.to {
        let row = sqlx::query("SELECT uuid AS game_uuid FROM user_stories WHERE user_uuid = $1")
            .bind(user_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
            .map_err(|_| DError::from("Could not receive step from existing story.", 0))?;

        (row.get("game_uuid"), body_to)
    } else {
        // Request game uuid and step uuid
        let row = sqlx::query(
            "SELECT user_stories.uuid AS game_uuid, decisions.step_output_uuid AS step_uuid
            FROM user_stories
            LEFT JOIN user_story_steps ON user_stories.uuid = user_story_steps.user_story_uuid
            JOIN decisions ON user_story_steps.step_uuid = decisions.step_input_uuid
            WHERE user_stories.user_uuid = $1
            AND user_story_steps.finished_at IS null
            AND user_stories.deleted_at IS null
            AND user_stories.finished_at IS null;",
        )
        .bind(user_uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("Could not receive step.", 0))?;

        (row.get("game_uuid"), row.get("step_uuid"))
    };

    Ok(Json(
        DStep::from_db(
            step_uuid,
            game_uuid,
            DCoord {
                lat: body.lat,
                lon: body.lon,
            },
            &ctx.detactive_db,
        )
        .await?,
    ))
}
