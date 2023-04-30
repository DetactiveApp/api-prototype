use axum::{routing::post, Router};

mod new;

use new::request;

pub async fn user_router() -> Router {
    return Router::new().route("/new", post(request));
}
