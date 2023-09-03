use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use sqlx::Row;
use uuid::Uuid;

use crate::{types::{ApiContext, DCoord, DError, DStep, DDecision, DWaypoint}, utils::contentful};

pub async fn post_game_start(
    Extension(ctx): Extension<ApiContext>,
    Path(story_uuid): Path<Uuid>,
    Json(user_coordinates): Json<DCoord>,
) -> Result<Json<DStep>, DError> {
    let user_uuid: Uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    // Checks if the is paused by the user
    match sqlx::query("SELECT steps.uuid, steps.story_uuid, steps.waypoint_uuid, steps.asset_id, steps.description, steps.media_type, steps.title, user_stories.uuid as game_uuid
    FROM user_stories
    JOIN user_story_steps ON user_story_steps.user_story_uuid = user_stories.uuid
    JOIN steps ON user_story_steps.step_uuid = steps.uuid
    WHERE user_stories.finished_at IS null
    AND user_stories.deleted_at IS null
    AND user_stories.user_uuid = $1
    AND user_stories.story_uuid = $2
    AND user_story_steps.finished_at IS null;
    ")
        .bind(user_uuid)
        .bind(story_uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("Failed to check for existing progress.", StatusCode::INTERNAL_SERVER_ERROR)) {
            Ok(row) => {
                if row.try_get::<Uuid, &str>("uuid").is_ok() {
                    let game_uuid: Uuid = row.get("game_uuid");
                    let step_uuid: Uuid = row.get("uuid");

                    sqlx::query("UPDATE user_story_steps SET updated_at = CURRENT_TIMESTAMP WHERE step_uuid = $1 AND user_story_uuid = $2;")
                    .bind(step_uuid)
                    .bind(game_uuid)
                    .execute(&ctx.detactive_db)
                    .await
                    .map_err(|_| DError::from("Failed to update current step.", StatusCode::INTERNAL_SERVER_ERROR))?;

                    return Ok(Json(DStep{ 
                            uuid: step_uuid, 
                            description: row.get("description"), 
                            media_type: row.get("media_type"), 
                            src: contentful::url(row.get("asset_id")).await?, 
                            title: row.get("title"), 
                            decisions: DDecision::from_db(step_uuid, &ctx.detactive_db).await?, 
                            waypoint: DWaypoint::from_db(step_uuid, user_coordinates, &ctx.detactive_db).await? }))
                }
            },
            _ => ()
        }

    // Opens new story game and returns game uuid
    let game_uuid: Uuid = sqlx::query(
        "INSERT INTO user_stories (story_uuid, user_uuid) VALUES ($1, $2) RETURNING uuid;",
    )
    .bind(story_uuid)
    .bind(user_uuid)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Failed to start story.", StatusCode::INTERNAL_SERVER_ERROR))?
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
    .map_err(|err| {
        println!("{}", err);
        DError::from("Failed to fetch first step of the current story.", StatusCode::INTERNAL_SERVER_ERROR)
    })?
    .get("uuid");

    // Returns the new step
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
