use axum::{routing::get, Router};

mod var_id;
use var_id::request;

pub async fn sticker_router() -> Router {
    Router::new().route("/:id", get(request))
}
