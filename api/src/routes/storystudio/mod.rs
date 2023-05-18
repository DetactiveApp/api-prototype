use axum::{
    routing::{get, post},
    Router,
};

mod access;
mod step;
mod story;
mod waypoint;

pub async fn storystudio_router() -> Router {
    return Router::new()
        .route("/access", get(access::get_request))
        .route("/waypoint", post(waypoint::post_request))
        .route("/story", post(story::post_request))
        .route("/:story/step", post(step::post_request));
}
