use axum::{middleware, routing::get, Router};
use tower_http::add_extension::AddExtensionLayer;

mod game;
mod sticker;
mod story;
mod storystudio;
mod user;

use self::storystudio::storystudio_router;
use game::game_router;
use reqwest::StatusCode;
use sticker::sticker_router;
use story::story_router;
use user::user_router;

use crate::{types::ApiContext, utils::guard};

async fn router() -> StatusCode {
    return StatusCode::NOT_FOUND;
}

async fn moai() -> &'static str {
    return "🗿";
}

pub async fn api() -> Router {
    return Router::new()
        .nest("/user", user_router().await)
        .route_layer(middleware::from_fn(guard))
        .nest("/game", game_router().await)
        .nest("/story", story_router().await)
        .nest("/storystudio", storystudio_router().await)
        .nest("/sticker", sticker_router().await)
        .route("/moai", get(moai))
        .route("/", get(router))
        .layer(AddExtensionLayer::new(ApiContext::new().await));
}
