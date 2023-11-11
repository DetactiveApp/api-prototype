use axum::{Extension, Json};
use reqwest::StatusCode;
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, StudioStep};

pub async fn save(
    Extension(ctx): Extension<ApiContext>,
    Json(mut step): Json<StudioStep>,
) -> Result<Json<StudioStep>, DError> {
    let mut step_waypoint_uuid: Option<Uuid> = None;
    println!("{:?}", step.waypoint);
    if let Some(waypoint) = &mut step.waypoint {
        if let Some(waypoint_uuid) = waypoint.uuid {
            // UPDATE WAYPOINT
            sqlx::query(
                "UPDATE waypoints SET place_type = $1, place_override = $2 WHERE uuid = $3;",
            )
            .bind(&waypoint.place_type)
            .bind(waypoint.place_override)
            .bind(waypoint_uuid)
            .execute(&ctx.detactive_db)
            .await
            .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

            step_waypoint_uuid = Some(waypoint_uuid);
        } else {
            // NEW WAYPOINT
            let waypoint_uuid: Uuid = sqlx::query(
                "INSERT INTO waypoints (uuid, place_type, place_override) VALUES (DEFAULT, $1, $2) RETURNING uuid;",
            )
            .bind(&waypoint.place_type)
            .bind(waypoint.place_override)
            .fetch_one(&ctx.detactive_db)
            .await
            .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?
            .get("uuid");

            waypoint.uuid = Some(waypoint_uuid);
            step_waypoint_uuid = Some(waypoint_uuid);
        }
    }

    for decision in &mut step.decisions {
        if decision.uuid.is_some() {
            // UPDATE DECISION
            sqlx::query("UPDATE decisions SET step_input_uuid = $1, step_output_uuid = $2, title = $3 WHERE uuid = $4;")
                    .bind(decision.step_input_uuid)
                    .bind(decision.step_output_uuid)
                    .bind(&decision.title)
                    .bind(decision.uuid)
                    .execute(&ctx.detactive_db)
                    .await
                    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;
        } else {
            // NEW DECISION
            let decision_uuid: Uuid = sqlx::query("INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) VALUES (DEFAULT, $1, $2, $3) RETURNING uuid;")
                    .bind(decision.step_input_uuid)
                    .bind(decision.step_output_uuid)
                    .bind(&decision.title)
                    .fetch_one(&ctx.detactive_db)
                    .await
                    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?
                    .get("uuid");

            decision.uuid = Some(decision_uuid);
        }
    }

    if step.uuid.is_some() {
        // UPDATE STEP
        sqlx::query("UPDATE steps SET waypoint_uuid = $1, asset_id = $2, description = $3, media_type = $4, title = $5 WHERE uuid = $6;")
            .bind(step.waypoint.as_ref().and_then(|w| w.uuid))
            .bind(&step.asset_id)
            .bind(&step.description)
            .bind(&step.media_type)
            .bind(&step.title)
            .bind(step.uuid)
            .execute(&ctx.detactive_db)
            .await
            .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

        return Ok(Json(step));
    }

    // NEW STEP
    let step_uuid: Uuid = sqlx::query("INSERT INTO steps (uuid, story_uuid, waypoint_uuid, asset_id, description, media_type, title) VALUES (DEFAULT, $1, $2, $3, $4, $5, $6) RETURNING uuid;")
        .bind(step.story_uuid)
        .bind(step_waypoint_uuid)
        .bind(&step.asset_id)
        .bind(&step.description)
        .bind(&step.media_type)
        .bind(&step.title)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?
        .get("uuid");

    step.uuid = Some(step_uuid);
    Ok(Json(step))
}
