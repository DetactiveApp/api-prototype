use axum::{routing::get, Router};

mod forward;
mod list;

pub async fn game_router() -> Router {
    Router::new()
        .route("/list", get(list::get_request))
        .route("/:id/forward", get(forward::get_request))
}
