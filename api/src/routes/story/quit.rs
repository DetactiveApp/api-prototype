use axum::Extension;
use reqwest::StatusCode;
use uuid::Uuid;

use crate::types::{ApiContext, DError};

pub async fn post_quit(Extension(ctx): Extension<ApiContext>) -> Result<StatusCode, DError> {
    let user_uuid: Uuid = Uuid::parse_str("87c44130-af78-4c38-9d58-63d5266bde4a").unwrap();

    sqlx::query("DELETE FROM user_stories WHERE user_uuid = $1;")
        .bind(user_uuid)
        .execute(&ctx.detactive_db)
        .await
        .map_err(|_| DError::from("No story was found.", 0))?;

    Ok(StatusCode::ACCEPTED)
}
