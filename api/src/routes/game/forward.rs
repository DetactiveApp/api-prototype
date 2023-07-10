use std::collections::HashMap;

use axum::{
    extract::{Path, Query},
    Extension, Json,
};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DCoord, DDecision, DStep, DWaypoint},
    utils::geo::near,
};

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
    to: Option<Uuid>,
}

pub async fn get_request(
    Path(user_story_uuid): Path<Uuid>,
    Query(params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DStep>, StatusCode> {
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
            .map_err(|_| StatusCode::NOT_FOUND)?
            .get("story_uuid");

        let step_waypoint_uuids: HashMap<Uuid, Option<Uuid>> =
            sqlx::query("SELECT uuid, waypoint_uuid FROM steps WHERE story_uuid = $1;")
                .bind(story_uuid)
                .fetch_all(&ctx.detactive_db)
                .await
                .map_err(|_| StatusCode::NOT_FOUND)?
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

                let waypoint: Option<DWaypoint> =
                    match sqlx::query("SELECT place_type FROM waypoints WHERE uuid = $1")
                        .bind(&step_waypoint_uuid.1)
                        .fetch_one(&ctx.detactive_db)
                        .await
                    {
                        Ok(row) => Some(DWaypoint {
                            uuid: step_waypoint_uuid.1.unwrap(),
                            coordinates: near(row.get("place_type"), params.lat, params.lon)
                                .await
                                .unwrap_or(DCoord { lat: 0.0, lon: 0.0 }),
                        }),
                        Err(_) => None,
                    };

                return match sqlx::query("SELECT * FROM steps WHERE uuid = $1;")
                    .bind(step_waypoint_uuid.0)
                    .fetch_one(&ctx.detactive_db)
                    .await
                {
                    Ok(row) => Ok(Json(DStep::from(&row, next_decisions, waypoint))),
                    Err(_) => Err(StatusCode::NOT_FOUND),
                };
            }
        }
    }

    Err(StatusCode::NOT_IMPLEMENTED)
}
