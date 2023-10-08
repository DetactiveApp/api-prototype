use axum::{
    routing::{get, post},
    Router,
};

mod list;
mod step;
mod story;

pub async fn storystudio_router() -> Router {
    Router::new()
        .route("/list/stories", get(list::stories))
        .route("/list/stories/:uuid/steps", get(list::steps))
        // Story
        .route("/stories/save", post(story::save))
        .route("/stories/:uuid/load", get(story::load))
        // Step
        .route("/steps/save", post(step::save))
        .route("/steps/:uuid/load", get(step::load))
}
