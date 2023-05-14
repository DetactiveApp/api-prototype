use axum::{routing::get, Router};

mod access;

pub async fn storystudio_router() -> Router {
    return Router::new().route("/access", get(access::request));
}
