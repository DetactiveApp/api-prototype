use axum::{middleware, routing::get, Router};
use tower_http::add_extension::AddExtensionLayer;

mod game;
mod sticker;
mod storystudio;
mod user;

use game::game_router;
use sticker::sticker_router;
use storystudio::storystudio_router;
use user::user_router;

use crate::{
    types::{ApiContext, DError},
    utils::guard,
};

async fn moai() -> &'static str {
    return "🗿";
}

async fn error() -> DError {
    DError {
        reason: String::from("This is a test."),
        code: 000,
    }
}

pub async fn api() -> Router {
    return Router::new()
        .nest("/user", user_router().await)
        .route_layer(middleware::from_fn(guard))
        .nest("/game", game_router().await)
        .nest("/storystudio", storystudio_router().await)
        .nest("/sticker", sticker_router().await)
        .route("/error", get(error))
        .route("/moai", get(moai))
        .layer(AddExtensionLayer::new(ApiContext::new().await));
}
