use axum::{routing::get, Extension, Router};

mod sticker;
mod user;

use reqwest::StatusCode;
use sticker::sticker_router;
use user::user_router;

use crate::utils::db;

pub async fn router() -> StatusCode {
    return StatusCode::NO_CONTENT;
}

pub async fn api() -> Router {
    let detactive_db_pool = db::detactive_pool().await;
    return Router::new()
        .route("/", get(router))
        .nest("/user", user_router().await)
        .nest("/sticker", sticker_router().await)
        .layer(Extension(detactive_db_pool));
}
