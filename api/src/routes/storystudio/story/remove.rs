use axum::{extract::Path, Extension};
use reqwest::StatusCode;
use uuid::Uuid;

use crate::types::{ApiContext, DError};

pub async fn remove(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> Result<StatusCode, DError> {
    sqlx::query(
        "DELETE FROM waypoints WHERE waypoints.uuid IN (
        SELECT steps.waypoint_uuid FROM steps WHERE steps.story_uuid = $1
    );",
    )
    .bind(uuid)
    .execute(&ctx.detactive_db)
    .await
    .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

    sqlx::query("DELETE FROM stories WHERE uuid = $1;")
        .bind(uuid)
        .execute(&ctx.detactive_db)
        .await
        .map_err(|err| DError::from(&err.to_string(), StatusCode::INTERNAL_SERVER_ERROR))?;

    Ok(StatusCode::OK)
}
