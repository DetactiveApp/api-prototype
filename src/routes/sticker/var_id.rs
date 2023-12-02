use axum::{extract::Path, Extension};
use sqlx::Row;

use crate::types::ApiContext;

pub async fn request(Path(path): Path<String>, Extension(ctx): Extension<ApiContext>) -> String {
    match sqlx::query("SELECT redirect_url FROM stickers WHERE deleted_at IS NULL AND id = $1;")
        .bind(&path)
        .fetch_one(&ctx.company_db)
        .await
    {
        Ok(sticker) => {
            sqlx::query("INSERT INTO sticker_hits (sticker_id) VALUES ($1)")
                .bind(path)
                .execute(&ctx.company_db)
                .await
                .unwrap();
            sticker.get("redirect_url")
        }
        Err(_) => String::from("https://www.detactive.de/"),
    }
}
