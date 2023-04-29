use axum::{routing::get, Router};

mod follow_us_on_instagram;
use follow_us_on_instagram::request;

pub fn sticker_router() -> Router {
    return Router::new().route("/follow-us-on-instagram", get(request));
}
