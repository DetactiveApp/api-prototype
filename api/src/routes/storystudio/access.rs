use axum::{extract::Query, Extension};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    mail: String,
}

pub async fn request(
    Query(query): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> StatusCode {
    match sqlx::query("SELECT id FROM staff WHERE mail = $1 AND storystudio_access = true;")
        .bind(query.mail)
        .fetch_one(&ctx.company_db)
        .await
    {
        Ok(_) => return StatusCode::OK,
        Err(_) => return StatusCode::NOT_FOUND,
    };
}
