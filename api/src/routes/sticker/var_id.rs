use axum::extract::Path;
use reqwest::StatusCode;
use sqlx::Row;

use crate::utils::db;

pub async fn request(Path(path): Path<String>) -> Result<String, StatusCode> {
    let db: sqlx::Pool<sqlx::Postgres> = db::sticker_pool().await;

    match sqlx::query("SELECT redirect_url FROM stickers WHERE deleted_at IS NULL AND id = $1;")
        .bind(&path)
        .fetch_one(&db)
        .await
    {
        Ok(sticker) => {
            sqlx::query("INSERT INTO sticker_hits (sticker_id) VALUES ($1)")
                .bind(path)
                .execute(&db)
                .await
                .unwrap();
            return Ok(sticker.get("redirect_url"));
        }
        Err(_) => return Err(StatusCode::NOT_FOUND),
    };
}
