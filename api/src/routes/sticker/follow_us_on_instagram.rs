use axum::Extension;
use sqlx::PgPool;

pub async fn request() -> String {
    return String::from("https://www.instagram.com/detactive.de/");
}
