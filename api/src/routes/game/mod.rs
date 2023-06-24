use axum::{routing::get, Router};

mod forward;
mod list;
mod start;

pub async fn game_router() -> Router {
    Router::new()
        .route("/list", get(list::get_request))
        .route("/start", get(start::get_request))
        .route("/:id/forward", get(forward::get_request))
}
