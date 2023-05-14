use axum::{extract::Query, Extension};
use reqwest::StatusCode;

use crate::types::ApiContext;

pub async fn request(
    Query(mail): Query<String>,
    Extension(ctx): Extension<ApiContext>,
) -> StatusCode {
    match sqlx::query("SELECT mail FROM staff WHERE mail = $1")
        .bind(mail)
        .fetch_one(&ctx.company_db)
        .await
    {
        Ok(_) => return StatusCode::OK,
        Err(_) => return StatusCode::NOT_FOUND,
    };
}
