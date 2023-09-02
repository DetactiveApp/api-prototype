use axum::{Extension, Json};
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, DUser};

#[derive(Serialize, Deserialize)]
pub struct Body {
    uuid: Uuid,
}

pub async fn post_users_register(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<Body>,
) -> Result<Json<DUser>, DError> {
    let user_uuid: Uuid = sqlx::query("INSERT INTO users (uuid) VALUES ($1) RETURNING uuid;")
        .bind(body.uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("Failed to register user.", 0))?
        .get("uuid");

    Ok(Json(DUser { uuid: user_uuid }))
}
