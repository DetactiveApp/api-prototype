use axum::{Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, StudioState, StudioStep, StudioStory, StudioWaypoint};

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
        .map(|rows| {
            let story: StudioStory = StudioStory {
                uuid: rows[0].get("story_uuid"),
                title: rows[0].get("story_title"),
                description: rows[0].get("story_description"),
                active: rows[0].get("story_active"),
                asset_id: rows[0].get("story_asset_id"),
            };

            let steps: Vec<StudioStep> = rows
                .iter()
                .map(|row| StudioStep {
                    uuid: row.get("step_uuid"),
                    title: row.get("step_title"),
                    description: row.get("step_description"),
                    media_type: row.get("step_media_type"),
                    asset_id: row.get("step_asset_id"),
                    waypoint: Some(StudioWaypoint {
                        uuid: row.get("waypoint_uuid"),
                        place_type: row.get("waypoint_place_type"),
                        place_override: row.get("waypoint_place_override"),
                    }),
                })
                .collect();

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
