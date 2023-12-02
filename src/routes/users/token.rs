use axum::{extract::Path, Extension, Json};
use chrono::Duration;
use log::error;
use reqwest::StatusCode;
use serde::Serialize;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DError},
    utils::encode,
};

#[derive(Serialize)]
pub struct Response {
    pub token: String,
}

pub async fn get_user_token(
    Extension(ctx): Extension<ApiContext>,
    Path(user_uuid): Path<Uuid>,
) -> Result<Json<Response>, DError> {
    sqlx::query("SELECT uuid FROM users WHERE uuid = $1;")
        .bind(user_uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| {
            error!("User {} not found.", user_uuid);
            DError::from("User not found.", StatusCode::NOT_FOUND)
        })?;

    let token = encode(user_uuid, Duration::minutes(30))?;
    Ok(Json(Response { token }))
}
