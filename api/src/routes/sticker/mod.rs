use axum::{routing::get, Extension, Router};

mod follow_us_on_instagram;
use follow_us_on_instagram::request;

use crate::utils::db;

pub async fn sticker_router() -> Router {
    return Router::new().route("/follow-us-on-instagram", get(request));
}
