use crate::types::{ApiContext, DCoord, DError, DStep};
use axum::{Extension, Json};
use serde::{Deserialize, Serialize};
use sqlx::Row;
use tokio::task;
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct Body {
    lat: f64,
    lon: f64,
    to: Option<Uuid>,
}

pub async fn post_game_forward(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<Body>,
) -> Result<Json<DStep>, DError> {
    let user_uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    let (game_uuid, step_uuid) = if let Some(body_to) = body.to {
        match sqlx::query("SELECT uuid AS game_uuid FROM user_stories WHERE user_uuid = $1")
            .bind(user_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
        {
            Ok(row) => (row.get("game_uuid"), body_to),
            Err(_) => {
                task::spawn(finish_story(user_uuid, ctx.clone()));
                return Err(DError::from("No content.", 999));
            }
        }
    } else {
        match sqlx::query(
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
        {
            Ok(row) => {
                let game_uuid = row.get("game_uuid");
                let step_uuid = row.try_get("step_uuid").map_err(|_| {
                    task::spawn(finish_story(user_uuid, ctx.clone()));
                    DError::from("No content.", 999)
                })?;
                (game_uuid, step_uuid)
            }
            Err(_) => {
                task::spawn(finish_story(user_uuid, ctx.clone()));
                return Err(DError::from("No content.", 999));
            }
        }
    };

    let dstep = DStep::from_db(
        step_uuid,
        game_uuid,
        DCoord {
            lat: body.lat,
            lon: body.lon,
        },
        &ctx.detactive_db,
    )
    .await?;

    Ok(Json(dstep))
}

async fn finish_story(user_uuid: Uuid, ctx: ApiContext) -> Result<(), DError> {
    sqlx::query(
        "UPDATE user_stories SET finished_at = CURRENT_TIMESTAMP WHERE deleted_at IS null AND finished_at IS null AND user_uuid = $1;",
    )
    .bind(user_uuid)
    .execute(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Failed to close previous step.", 0))?;

    Ok(())
}
