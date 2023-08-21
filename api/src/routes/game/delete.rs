use axum::Extension;
use reqwest::StatusCode;
use uuid::Uuid;

use crate::types::{ApiContext, DError};

pub async fn delete_game_delete(
    Extension(ctx): Extension<ApiContext>,
) -> Result<StatusCode, DError> {
    let user_uuid: Uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    sqlx::query(
        "UPDATE user_stories SET deleted_at = CURRENT_TIMESTAMP WHERE deleted_at IS null AND finished_at IS null AND user_uuid = $1;",
        )
        .bind(user_uuid)
        .execute(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("Failed to close previous step.", 0))?;

    Ok(StatusCode::ACCEPTED)
}
