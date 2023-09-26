use axum::{
    routing::{get, post},
    Router,
};

mod list;
mod load;
mod save;

pub async fn storystudio_router() -> Router {
    Router::new()
        .route("/list", get(list::get_story_list))
        .route("/load", post(load::get_load_story))
}
