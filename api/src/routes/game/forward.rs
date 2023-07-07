use axum::{
    extract::{Path, Query},
    Extension, Json,
};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::{postgres::PgRow, Row};
use uuid::Uuid;

use crate::{
    types::{ApiContext, DDecision, DStep, DWaypoint},
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
    Query(mut params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DStep>, StatusCode> {
    if params.to.is_none() {
        params.to =
            Some(sqlx::query("SELECT step_uuid FROM user_story_steps WHERE user_story_uuid = $1 AND finished_at = null;")
                .bind(&user_story_uuid)
                .fetch_one(&ctx.detactive_db)
                .await
                .map_err(|_| StatusCode::NOT_FOUND)?
                .get("step_uuid"));
    }

    let step: PgRow = sqlx::query("SELECT * FROM steps WHERE uuid = $1;")
        .bind(params.to)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| StatusCode::NOT_FOUND)?;

    let waypoint: Option<DWaypoint> = match sqlx::query("SELECT * FROM waypoints WHERE uuid = $1;")
        .bind(step.get::<Uuid, &str>("waypoint_uuid"))
        .fetch_one(&ctx.detactive_db)
        .await
    {
        Ok(row) => Some(DWaypoint {
            uuid: row.get("uuid"),
            coordinates: near(row.get("place_type"), params.lat, params.lon).await?,
        }),
        Err(_) => None,
    };

    let decisions: Vec<DDecision> =
        match sqlx::query("SELECT * FROM decisions WHERE step_input_uuid = $1")
            .bind(step.get::<Uuid, &str>("uuid"))
            .fetch_all(&ctx.detactive_db)
            .await
        {
            Ok(rows) => rows
                .iter()
                .map(|row| DDecision {
                    uuid: row.get("uuid"),
                    step_input_uuid: row.get("step_input_uuid"),
                    step_output_uuid: row.get("step_output_uuid"),
                    title: row.get("title"),
                })
                .collect(),
            Err(_) => vec![],
        };

    Ok(Json(DStep {
        uuid: step.get("uuid"),
        description: step.get("description"),
        media_type: step.get("media_type"),
        src: step.get("src"),
        title: step.get("title"),
        decisions: decisions,
        waypoint: waypoint,
    }))
}
