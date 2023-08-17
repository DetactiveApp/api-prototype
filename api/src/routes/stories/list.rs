use axum::{extract::Query, Extension, Json};
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DError, DStory},
    utils::geo::get_tags,
};

#[derive(Serialize, Deserialize)]
pub struct GetQuery {
    lat: f64,
    lon: f64,
}

pub async fn get_request(
    Query(query): Query<GetQuery>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<DStory>>, DError> {
    let location_tags = get_tags(&query.lat, &query.lon).await?;

    todo!()
}
