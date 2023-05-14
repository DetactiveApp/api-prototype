use axum::{routing::get, Extension, Router};

mod sticker;
mod storystudio;
mod user;

use reqwest::StatusCode;
use sticker::sticker_router;
use tower_http::add_extension::AddExtensionLayer;
use user::user_router;

use crate::{types::ApiContext, utils::db};

async fn router() -> StatusCode {
    return StatusCode::NOT_FOUND;
}

async fn moai() -> &'static str {
    return "🗿";
}

pub async fn api() -> Router {
    let detactive_db_pool = db::detactive_pool().await;
    let company_db_pool = db::detactive_pool().await;
    return Router::new()
        .nest("/user", user_router().await)
        .nest("/sticker", sticker_router().await)
        .route("/moai", get(moai))
        .route("/", get(router))
        .layer(AddExtensionLayer::new(ApiContext {
            detactive_db: detactive_db_pool,
            company_db: company_db_pool,
        }));
}
