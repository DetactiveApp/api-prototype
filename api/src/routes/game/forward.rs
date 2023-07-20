use std::collections::HashMap;

use axum::{
    extract::{Path, Query},
    Extension, Json,
};

use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DCoord, DDecision, DError, DStep, DWaypoint},
    utils::geo::near,
};

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
}

pub async fn get_request(
    Path(user_story_uuid): Path<Uuid>,
    Query(params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DStep>, DError> {
    let first_step = !sqlx::query("SELECT * FROM user_story_steps WHERE user_story_uuid = $1;")
        .bind(user_story_uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .is_ok();

    if first_step {
        let story_uuid: Uuid = sqlx::query("SELECT story_uuid FROM user_stories WHERE uuid = $1;")
            .bind(user_story_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
            .map_err(|_| DError::from("No step found.", 0))?
            .get("story_uuid");

        let step_waypoint_uuids: HashMap<Uuid, Option<Uuid>> =
            sqlx::query("SELECT uuid, waypoint_uuid FROM steps WHERE story_uuid = $1;")
                .bind(story_uuid)
                .fetch_all(&ctx.detactive_db)
                .await
                .map_err(|_| DError::from("No waypoints or steps found.", 0))?
                .iter()
                .map(|row| (row.get("uuid"), row.get("waypoint_uuid")))
                .collect();

        for step_waypoint_uuid in &step_waypoint_uuids {
            let decision: Option<DDecision> =
                match sqlx::query("SELECT * FROM decisions WHERE step_output_uuid = $1;")
                    .bind(step_waypoint_uuid.0)
                    .fetch_one(&ctx.detactive_db)
                    .await
                {
                    Ok(row) => Some(DDecision {
                        uuid: row.get("uuid"),
                        step_input_uuid: row.get("step_input_uuid"),
                        step_output_uuid: row.get("step_output_uuid"),
                        title: row.get("title"),
                    }),
                    Err(_) => None,
                };

            if decision.is_some() {
                let next_decisions: Vec<DDecision> =
                    sqlx::query("SELECT * FROM decisions WHERE step_input_uuid = $1;")
                        .bind(step_waypoint_uuid.0)
                        .fetch_all(&ctx.detactive_db)
                        .await
                        .unwrap_or(vec![])
                        .iter()
                        .map(|row| DDecision::from(row))
                        .collect();

                let waypoint: Option<DWaypoint> = match sqlx::query(
                    "SELECT place_type, place_override FROM waypoints WHERE uuid = $1;",
                )
                .bind(&step_waypoint_uuid.1)
                .fetch_one(&ctx.detactive_db)
                .await
                {
                    Ok(row) => Some(DWaypoint {
                        uuid: step_waypoint_uuid.1.unwrap(),
                        coordinates: near(
                            row.get("place_type"),
                            params.lat,
                            params.lon,
                            row.get("place_override"),
                        )
                        .await
                        .unwrap_or(DCoord { lat: 0.0, lon: 0.0 }),
                    }),
                    Err(_) => None,
                };

                sqlx::query("INSERT INTO user_story_steps (user_story_uuid, step_uuid, latitude, longitude) VALUES ($1, $2, $3, $4);")
                    .bind(user_story_uuid)
                    .bind(step_waypoint_uuid.0)
                    .bind(&waypoint.as_ref().unwrap().coordinates.lat)
                    .bind(&waypoint.as_ref().unwrap().coordinates.lon)
                    .execute(&ctx.detactive_db)
                    .await
                    .map_err(|_| DError::from("Failed to create step entry.", 0))?;

                return match sqlx::query("SELECT * FROM steps WHERE uuid = $1;")
                    .bind(step_waypoint_uuid.0)
                    .fetch_one(&ctx.detactive_db)
                    .await
                {
                    Ok(row) => Ok(Json(DStep::from(&row, next_decisions, waypoint))),
                    Err(_) => Err(DError::from("No step found.", 0)),
                };
            }
        }
    }

    // middle or last step (NOT THE FIRST STEP)
    let previous_step_uuid: Option<Uuid> =
        sqlx::query("SELECT step_uuid FROM user_story_steps WHERE finished_at IS null;")
            .fetch_one(&ctx.detactive_db)
            .await
            .map(|row| row.get("step_uuid"))
            .map_err(|_| DError::from("Failed to update step data.", 0))?;

    sqlx::query(
        "UPDATE user_story_steps SET finished_at = CURRENT_TIMESTAMP WHERE user_story_uuid = $1;",
    )
    .bind(user_story_uuid)
    .execute(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Failed to update step data.", 0))?;

    let step_uuid: Option<Uuid> =
        sqlx::query("SELECT step_output_uuid FROM decisions WHERE step_input_uuid = $1;")
            .bind(previous_step_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
            .map(|row| row.get("step_output_uuid"))
            .map_err(|_| DError::from("Story ended.", 999))?;

    let next_decisions: Vec<DDecision> =
        sqlx::query("SELECT * FROM decisions WHERE step_input_uuid = $1;")
            .bind(step_uuid)
            .fetch_all(&ctx.detactive_db)
            .await
            .unwrap_or(vec![])
            .iter()
            .map(|row| DDecision::from(row))
            .collect();

    let waypoint_uuid: Option<Uuid> =
        sqlx::query("SELECT waypoint_uuid FROM steps WHERE uuid = $1;")
            .bind(step_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
            .map(|row| row.get("waypoint_uuid"))
            .map_err(|_| DError::from("Failed to gather waypoint of next step.", 0))?;

    let waypoint: Option<DWaypoint> =
        match sqlx::query("SELECT place_type, place_override FROM waypoints WHERE uuid = $1;")
            .bind(&waypoint_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
        {
            Ok(row) => Some(DWaypoint {
                uuid: waypoint_uuid.unwrap(),
                coordinates: near(
                    row.get("place_type"),
                    params.lat,
                    params.lon,
                    row.get("place_override"),
                )
                .await
                .map_err(|_| {
                    DError::from("Failed to gather place_type of next potential waypoint.", 0)
                })?,
            }),
            Err(_) => None,
        };

    sqlx::query("INSERT INTO user_story_steps (user_story_uuid, step_uuid, latitude, longitude) VALUES ($1, $2, $3, $4);")
        .bind(user_story_uuid)
        .bind(step_uuid)
        .bind(&waypoint.as_ref().unwrap().coordinates.lat)
        .bind(&waypoint.as_ref().unwrap().coordinates.lon)
        .execute(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("Failed to create step entry.", 0))?;

    return match sqlx::query("SELECT * FROM steps WHERE uuid = $1;")
        .bind(step_uuid)
        .fetch_one(&ctx.detactive_db)
        .await
    {
        Ok(row) => Ok(Json(DStep::from(&row, next_decisions, waypoint))),
        Err(_) => Err(DError::from("No story found.", 0)),
    };
}
