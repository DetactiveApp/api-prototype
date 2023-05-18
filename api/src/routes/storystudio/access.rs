use axum::{extract::Query, Extension};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    mail: String,
}

pub async fn get_request(
    Query(query): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> StatusCode {
    return match sqlx::query("SELECT id FROM staff WHERE mail = $1 AND storystudio_access = true;")
        .bind(query.mail)
        .fetch_one(&ctx.company_db)
        .await
    {
        Ok(_) => StatusCode::OK,
        Err(_) => StatusCode::NOT_FOUND,
    };
}
