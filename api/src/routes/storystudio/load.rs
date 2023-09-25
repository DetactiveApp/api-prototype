use axum::{Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, DWaypoint, StudioState, StudioStep, StudioStory};

#[derive(Serialize, Deserialize)]
pub struct Body {
    uuid: Uuid,
}

pub async fn get_load_story(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<Body>,
) -> Result<Json<StudioState>, DError> {
    Ok(Json(
        sqlx::query(
            "SELECT

            stories.uuid as story_uuid,
            stories.title as story_title,
            stories.description as story_description,
            stories.active as story_active,
            stories.asset_id as story_asset_id,

            steps.uuid as step_uuid,
            steps.title as step_title,
            steps.description as step_description,
            steps.media_type as step_media_type,
            steps.asset_id as step_asset_id,

            waypoints.uuid as waypoint_uuid,
            waypoints.place_type as waypoint_place_type,
            waypoints.place_override as waypoint_place_override

            FROM stories
            LEFT JOIN steps ON steps.story_uuid = stories.uuid
            LEFT JOIN waypoints ON waypoints.uuid = steps.waypoint_uuid
            WHERE uuid = $1;",
        )
        .bind(body.uuid)
        .fetch_all(&ctx.detactive_db)
        .await
        .map(|row| {
            let story: StudioStory = StudioStory {
                uuid: row[0].get("story_uuid"),
                title: row[0].get("story_title"),
                description: row[0].get("story_description"),
                active: row[0].get("story_active"),
                asset_id: row[0].get("story_asset_id"),
            };

            let waypoints: Vec<DWaypoint> = vec![];
            let steps: Vec<StudioStep> = vec![];

            StudioState {
                story: story,
                steps: steps,
            }
        })
        .map_err(|_| {
            DError::from(
                "Failed to load story from database.",
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?,
    ))
}
