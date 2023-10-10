use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, StudioDecision, StudioStep, StudioWaypoint};

pub async fn load(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> Result<Json<StudioStep>, DError> {
    let rows = sqlx::query(
        "SELECT
        steps.uuid as step_uuid,
        steps.story_uuid as story_uuid,
        steps.title as step_title,
        steps.description as step_description,
        steps.media_type as step_media_type,
        steps.asset_id as step_asset_id,

        waypoints.uuid as waypoint_uuid,
        waypoints.place_type as waypoint_place_type,
        waypoints.place_override as waypoint_place_override,

        decisions.uuid as decision_uuid,
        decisions.step_input_uuid as decision_step_input_uuid,
        decisions.step_output_uuid as decision_step_output_uuid,
        decisions.title as decision_title

        FROM steps
        LEFT JOIN waypoints ON waypoints.uuid = steps.waypoint_uuid
        LEFT JOIN decisions ON decisions.step_input_uuid = steps.uuid
        WHERE steps.uuid = $1;",
    )
    .bind(uuid)
    .fetch_all(&ctx.detactive_db)
    .await
    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

    let waypoint: Option<StudioWaypoint> = if let Some(waypoint) = rows[0].get("waypoint_uuid") {
        Some(StudioWaypoint {
            uuid: waypoint,
            place_type: rows[0].get("waypoint_place_type"),
            place_override: rows[0].get("waypoint_place_override"),
        })
    } else {
        None
    };

    let decisions: Vec<StudioDecision> = rows
        .iter()
        .filter(|row| row.try_get::<Uuid, _>("decision_uuid").is_ok())
        .map(|row| StudioDecision {
            uuid: row.get("decision_uuid"),
            title: row.get("decision_title"),
            step_input_uuid: row.get("decision_step_input_uuid"),
            step_output_uuid: row.get("decision_step_output_uuid"),
        })
        .collect();

    Ok(Json(StudioStep {
        story_uuid: rows[0].get("story_uuid"),
        uuid: rows[0].get("step_uuid"),
        title: rows[0].get("step_title"),
        description: rows[0].get("step_description"),
        media_type: rows[0].get("step_media_type"),
        asset_id: rows[0].get("step_asset_id"),
        waypoint,
        decisions,
    }))
}
