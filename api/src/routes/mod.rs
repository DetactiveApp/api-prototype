use axum::{routing::get, Router};

mod sticker;
mod user;

use reqwest::StatusCode;
use sticker::sticker_router;
use user::user_router;

pub async fn router() -> StatusCode {
    return StatusCode::NO_CONTENT;
}

pub async fn api() -> Router {
    return Router::new()
        .route("/", get(router))
        .nest("/user", user_router().await)
        .nest("/sticker", sticker_router().await);
}
