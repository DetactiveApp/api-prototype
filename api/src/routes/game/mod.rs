use axum::{routing::get, Router};

mod forward;

pub async fn game_router() -> Router {
    Router::new().route("/:id/forward", get(forward::get_request))
}
