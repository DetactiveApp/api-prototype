use axum::extract::Path;
use reqwest::StatusCode;
use sqlx::Row;

use crate::utils::db;

pub async fn request(Path(path): Path<String>) -> Result<String, StatusCode> {
    let db: sqlx::Pool<sqlx::Postgres> = db::sticker_pool().await;

    let stickers = sqlx::query("SELECT id, redirect_url FROM stickers WHERE deleted_at IS NULL;")
        .fetch_all(&db)
        .await
        .unwrap();

    for sticker in stickers {
        let sticker_id: String = sticker.get("id");
        let redirect_url: String = sticker.get("redirect_url");

        if sticker_id == path {
            return Ok(redirect_url);
        }
    }

    return Err(StatusCode::NOT_FOUND);
}
