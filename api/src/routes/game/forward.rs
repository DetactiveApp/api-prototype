use axum::{
    extract::{Path, Query},
    Extension, Json,
};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::{postgres::PgRow, Row};
use uuid::Uuid;

use crate::types::{ApiContext, MediaType};

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
    to: Option<Uuid>,
}

#[derive(Serialize, Deserialize)]
pub struct Waypoint {
    uuid: Uuid,
    lat: f64,
    lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct Decision {
    uuid: Uuid,
    step_input_uuid: Uuid,
    step_output_uuid: Uuid,
    title: String,
}

#[derive(Serialize, Deserialize)]
pub struct Step {
    uuid: Uuid,
    description: String,
    media_type: MediaType,
    src: String,
    title: String,
    decisions: Vec<Decision>,
    waypoint: Option<Waypoint>,
}

pub async fn get_request(
    Path(player_story_uuid): Path<Uuid>,
    Query(mut params): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Step>, StatusCode> {
    if params.to.is_none() {
        params.to =
            Some(sqlx::query("SELECT step_uuid FROM player_story_steps WHERE player_story_uuid = $1 AND finished_at = null;")
                .bind(&player_story_uuid)
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

    let waypoint: Option<Waypoint> = match sqlx::query("SELECT * FROM waypoints WHERE uuid = $1;")
        .bind(step.get::<Uuid, &str>("waypoint_uuid"))
        .fetch_one(&ctx.detactive_db)
        .await
    {
        Ok(row) => Some(Waypoint {
            uuid: row.get("uuid"),
            lat: 0.0,
            lon: 0.0,
        }),
        Err(_) => None,
    };

    let decisions: Vec<Decision> =
        match sqlx::query("SELECT * FROM decisions WHERE step_input_uuid = $1")
            .bind(step.get::<Uuid, &str>("uuid"))
            .fetch_all(&ctx.detactive_db)
            .await
        {
            Ok(rows) => rows
                .iter()
                .map(|row| Decision {
                    uuid: row.get("uuid"),
                    step_input_uuid: row.get("step_input_uuid"),
                    step_output_uuid: row.get("step_output_uuid"),
                    title: row.get("title"),
                })
                .collect(),
            Err(_) => vec![],
        };

    Ok(Json(Step {
        uuid: step.get("uuid"),
        description: step.get("description"),
        media_type: step.get("media_type"),
        src: step.get("src"),
        title: step.get("title"),
        decisions: decisions,
        waypoint: waypoint,
    }))
}
