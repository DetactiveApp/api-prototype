use axum::{middleware, routing::get, Extension, Router};
use reqwest::StatusCode;
use tower_http::add_extension::AddExtensionLayer;

mod games;
//mod sticker;
mod stories;
mod storystudio;
mod users;

use games::games_router;
//use sticker::sticker_router;
use stories::stories_router;
use storystudio::storystudio_router;
use users::users_router;

use crate::{
    types::{ApiContext, DError},
    utils::guard,
};

async fn moai(Extension(ctx): Extension<ApiContext>) -> &'static str {
    "🗿"
}

async fn error() -> DError {
    DError::from("This is a test error.", StatusCode::INTERNAL_SERVER_ERROR)
}

pub async fn api() -> Router {
    Router::new()
        .nest("/games", games_router().await)
        .nest("/stories", stories_router().await)
        .route_layer(middleware::from_fn(guard))
        .nest("/users", users_router().await)
        .nest("/storystudio", storystudio_router().await)
        //.nest("/sticker", sticker_router().await)
        .route("/moai", get(moai))
        .route("/error", get(error))
        .layer(AddExtensionLayer::new(ApiContext::new().await))
}
