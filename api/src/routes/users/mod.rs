use axum::{routing::post, Extension, Json, Router};
use reqwest::StatusCode;
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, DUser};

pub async fn post_users_register(
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DUser>, DError> {
    let user_uuid: Uuid = sqlx::query("INSERT INTO users (uuid) VALUES (DEFAULT) RETURNING uuid;")
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| {
            DError::from(
                "Failed to register user.",
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?
        .get("uuid");

    Ok(Json(DUser { uuid: user_uuid }))
}

pub async fn users_router() -> Router {
    return Router::new().route("/", post(post_users_register));
}
