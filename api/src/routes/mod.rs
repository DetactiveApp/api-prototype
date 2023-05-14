use axum::{routing::get, Extension, Router};

mod sticker;
mod storystudio;
mod user;

use reqwest::StatusCode;
use sticker::sticker_router;
use user::user_router;

use crate::utils::db::{self, company_pool};

async fn router() -> StatusCode {
    return StatusCode::NOT_FOUND;
}

async fn moai() -> &'static str {
    return "🗿";
}

pub async fn api() -> Router {
    let detactive_db_pool = db::detactive_pool().await;
    return Router::new()
        .route("/", get(router))
        .nest("/user", user_router().await)
        .layer(Extension(detactive_db_pool))
        .route("/moai", get(moai))
        .nest("/sticker", sticker_router().await)
        .layer(Extension(company_pool));
}
