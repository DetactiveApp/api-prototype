use axum::{
    routing::{get, post},
    Router,
};

mod list;
mod step;
mod story;

pub async fn storystudio_router() -> Router {
    Router::new()
        .route("/list", get(list::list))
        // Story
        .route("/stories/save", post(story::save))
        .route("/stories/:uuid/load", get(story::load))
        // Step
        .route("/stories/:uuid/steps/save", post(step::save))
        .route("/stories/:uuid/steps/load", get(step::load))
}
