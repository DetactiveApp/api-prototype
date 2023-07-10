use axum::{
    extract::{Path, Query},
    Extension, Json,
};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
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
    let first_step: bool =
        sqlx::query("SELECT 1 FROM user_story_steps WHERE user_story_uuid = $1;")
            .bind(user_story_uuid)
            .fetch_one(&ctx.detactive_db)
            .await
            .unwrap()
            .get("1");

    Ok(Json(DStep {
        uuid: todo!(),
        description: todo!(),
        media_type: todo!(),
        src: todo!(),
        title: todo!(),
        decisions: todo!(),
        waypoint: todo!(),
    }))
}
