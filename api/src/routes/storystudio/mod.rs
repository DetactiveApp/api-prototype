use axum::{
    routing::{get, post, put},
    Router,
};

mod access;
mod list;
mod step;
mod story;
mod waypoint;

pub async fn storystudio_router() -> Router {
    return Router::new()
        .route("/access", get(access::get_request))
        .route("/waypoint", post(waypoint::post_request))
        .route("/list", get(list::get_request))
        .route("/story", post(story::post_request))
        .route("/:story", put(story::put_request))
        .route("/:story", get(story::get_request))
        .route("/:story/step", post(step::post_request));
}
