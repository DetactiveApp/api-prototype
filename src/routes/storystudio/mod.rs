use axum::{
    routing::{delete, get, post},
    Router,
};

mod list;
mod step;
mod story;

pub async fn storystudio_router() -> Router {
    Router::new()
        // List
        .route("/list/stories", get(list::stories))
        .route("/list/stories/:uuid/steps", get(list::steps))
        // Story
        .route("/stories/save", post(story::save))
        .route("/stories/:uuid/load", get(story::load))
        .route("/stories/:uuid/remove", delete(story::remove))
        // Step
        .route("/steps/save", post(step::save))
        .route("/steps/:uuid/load", get(step::load))
        .route("/steps/:uuid/remove", delete(step::remove))
}
