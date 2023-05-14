use axum::{extract::Path, Extension};
use sqlx::{PgPool, Row};

use crate::utils::db;

pub async fn request(Path(path): Path<String>, Extension(company_db): Extension<PgPool>) -> String {
    match sqlx::query("SELECT redirect_url FROM stickers WHERE deleted_at IS NULL AND id = $1;")
        .bind(&path)
        .fetch_one(&company_db)
        .await
    {
        Ok(sticker) => {
            sqlx::query("INSERT INTO sticker_hits (sticker_id) VALUES ($1)")
                .bind(path)
                .execute(&company_db)
                .await
                .unwrap();
            return sticker.get("redirect_url");
        }
        Err(_) => return String::from("https://www.detactive.de/"),
    };
}
