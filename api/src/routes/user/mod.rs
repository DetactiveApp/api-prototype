use axum::{routing::post, Router};

mod new;

use new::new;

pub fn router() -> Router {
    return Router::new().route("/new", post(new));
}
