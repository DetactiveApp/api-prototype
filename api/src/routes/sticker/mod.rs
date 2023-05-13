use axum::{routing::get, Router};

mod var_id;
use var_id::request;

pub async fn sticker_router() -> Router {
    return Router::new().route("/:id", get(request));
}
