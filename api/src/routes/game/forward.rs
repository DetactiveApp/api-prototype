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

    let step_data: PgRow = sqlx::query("SELECT * FROM steps WHERE uuid = $1;")
        .bind(params.to)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| StatusCode::NOT_FOUND)?;

    let waypoint_data: PgRow = sqlx::query("SELECT * FROM waypoints WHERE uuid = $1;")
        .bind(step_data.get::<Uuid, &str>("waypoint_uuid"))
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| StatusCode::NOT_FOUND)?;

    let waypoint: Option<Waypoint> = Some(Waypoint {
        uuid: waypoint_data.get("uuid"),
        lat: 0.0,
        lon: 0.0,
    });

    let step: Step = Step {
        uuid: step_data.get("uuid"),
        description: step_data.get("description"),
        media_type: step_data.get("media_type"),
        src: step_data.get("src"),
        title: step_data.get("title"),
        decisions: vec![],
        waypoint: waypoint,
    };

    Err(StatusCode::NOT_IMPLEMENTED)
}
