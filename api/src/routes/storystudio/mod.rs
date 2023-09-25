use axum::{routing::get, Router};

mod list;
mod load;
mod save;

pub async fn storystudio_router() -> Router {
    Router::new()
        .route("/list", get(list::get_story_list))
        .route("/load", get(load::get_load_story))
}
