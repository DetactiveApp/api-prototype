use axum::{middleware, routing::get, Router};
use tower_http::add_extension::AddExtensionLayer;

mod sticker;
mod story;
mod storystudio;
mod user;

use sticker::sticker_router;
use story::story_router;
use storystudio::storystudio_router;
use user::user_router;

use crate::{
    types::{ApiContext, DError},
    utils::guard,
};

async fn moai() -> &'static str {
    "🗿"
}

async fn error() -> DError {
    DError::from("This is a test error.", 1024)
}

pub async fn api() -> Router {
    return Router::new()
        .nest("/user", user_router().await)
        .route_layer(middleware::from_fn(guard))
        .nest("/story", story_router().await)
        .nest("/storystudio", storystudio_router().await)
        .nest("/sticker", sticker_router().await)
        .route("/error", get(error))
        .route("/moai", get(moai))
        .layer(AddExtensionLayer::new(ApiContext::new().await));
}
