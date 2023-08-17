use axum::{
    extract::{Path, Query},
    Extension, Json,
};

use serde::{Deserialize, Serialize};
use sqlx::{postgres, Row};
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
    todo!()
}
