use axum::{extract::Path, Extension, Json};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DCoord, DError, DStep};

pub async fn post_story_start(
    Extension(ctx): Extension<ApiContext>,
    Path(story_uuid): Path<Uuid>,
    Json(user_coordinates): Json<DCoord>,
) -> Result<Json<DStep>, DError> {
    // Opens new story game and returns game uuid
    let game_uuid: Uuid = sqlx::query(
        "INSERT INTO user_stories (story_uuid, user_uuid) VALUES ($1, $2) RETURNING uuid;",
    )
    .bind(story_uuid)
    .bind(Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap())
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Failed to start story.", 0))?
    .get("uuid");

    // Receive first step
    let step_uuid: Uuid = sqlx::query(
        "SELECT steps.uuid FROM steps
        JOIN decisions ON decisions.step_output_uuid = steps.uuid
        WHERE steps.story_uuid = $1
        AND decisions.step_input_uuid IS null;",
    )
    .bind(story_uuid)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Failed to find first step of current story.", 0))?
    .get("steps.uuid");

    Ok(Json(
        DStep::from_db(
            step_uuid,
            game_uuid,
            DCoord {
                lat: user_coordinates.lat,
                lon: user_coordinates.lon,
            },
            &ctx.detactive_db,
        )
        .await?,
    ))
}
