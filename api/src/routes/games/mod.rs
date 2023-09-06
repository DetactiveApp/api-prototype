use axum::{
    routing::{delete, get, post},
    Router,
};

mod delete;
mod start;
mod steps;

pub async fn games_router() -> Router {
    Router::new()
        .route("/:uuid/delete", delete(delete::delete_game_delete))
        .route("/:uuid/steps/:uuid", post(steps::post_game_next_step))
        .route("/:uuid/steps/history", get(steps::get_stories_history))
        .route("/:uuid/start", post(start::post_game_start))
}
