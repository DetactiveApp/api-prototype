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
    let user_uuid: &Uuid = &ctx.user.unwrap().uuid;

    // Checks if the is paused by the user
    if let Ok(row) = sqlx::query("SELECT steps.uuid, steps.story_uuid, steps.waypoint_uuid, steps.asset_id, steps.description, steps.media_type, steps.title, steps.ending, user_stories.uuid as game_uuid
     FROM user_stories
     LEFT JOIN user_story_steps ON user_story_steps.user_story_uuid = user_stories.uuid
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
         .map_err(|err| DError::from(&(String::from("Failed to check for existing progress: ") + &err.to_string()), StatusCode::INTERNAL_SERVER_ERROR)) {
         if row.try_get::<Uuid, &str>("uuid").is_ok() {
             let game_uuid: Uuid = row.get("game_uuid");
             let step_uuid: Uuid = row.get("uuid");
 
             sqlx::query("UPDATE user_story_steps SET updated_at = CURRENT_TIMESTAMP WHERE step_uuid = $1 AND user_story_uuid = $2;")
             .bind(step_uuid)
             .bind(game_uuid)
             .execute(&ctx.detactive_db)
             .await
             .map_err(|err| DError::from(&(String::from("Failed to update current step: ") + &err.to_string()), StatusCode::INTERNAL_SERVER_ERROR))?;
 
            return Ok(Json(DStep{ 
                    uuid: step_uuid, 
                    description: row.get("description"), 
                    media_type: row.get("media_type"), 
                    src: contentful::url(row.get("asset_id")).await?, 
                    title: row.get("title"), 
                    decisions: DDecision::from_db(step_uuid, &ctx.detactive_db).await?, 
                    waypoint: DWaypoint::from_db(step_uuid, user_coordinates, &ctx.detactive_db).await?,
                    ending: row.get("ending") }))
         }
     }

    // Opens new story game and returns game uuid
    let game_uuid: Uuid = sqlx::query(
        "INSERT INTO user_stories (story_uuid, user_uuid) VALUES ($1, $2) RETURNING uuid;",
    )
    .bind(story_uuid)
    .bind(user_uuid)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Story not found.", StatusCode::NOT_FOUND))?
    .get("uuid");

    // Receive first step
    let step_uuid: Uuid = sqlx::query(
        "SELECT steps.uuid
        FROM steps
        WHERE steps.uuid NOT IN (
            SELECT DISTINCT step_output_uuid
            FROM decisions
            WHERE step_output_uuid IS NOT NULL
        ) AND steps.story_uuid = $1
        LIMIT 1;",
    )
    .bind(story_uuid)
    .fetch_one(&ctx.detactive_db)
    .await
    .map_err(|err| {
        DError::from(&(String::from("Failed to fetch first step of the current story: ") + &err.to_string()), StatusCode::INTERNAL_SERVER_ERROR)
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
