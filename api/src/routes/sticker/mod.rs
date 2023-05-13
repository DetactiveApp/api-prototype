use axum::{routing::get, Router};

mod var_id;
use var_id::request;

async fn test() -> &'static str {
    return "yooooo";
}

pub async fn sticker_router() -> Router {
    return Router::new()
        .route("/:id", get(request))
        .route("/test", get(test));
}
