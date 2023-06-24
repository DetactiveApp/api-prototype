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

use crate::{types::ApiContext, utils::guard};

async fn moai() -> &'static str {
    return "🗿";
}

pub async fn api() -> Router {
    return Router::new()
        .nest("/user", user_router().await)
        .route_layer(middleware::from_fn(guard))
        .nest("/game", game_router().await)
        .nest("/storystudio", storystudio_router().await)
        .nest("/sticker", sticker_router().await)
        .route("/moai", get(moai))
        .layer(AddExtensionLayer::new(ApiContext::new().await));
}
