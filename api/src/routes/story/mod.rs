use axum::{routing::get, Router};

mod list;

pub async fn story_router() -> Router {
    Router::new().route("/list", get(list::get_request))
}
