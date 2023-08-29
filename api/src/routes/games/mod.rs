use axum::{
    routing::{delete, post},
    Router,
};

mod delete;
mod start;
mod steps;

pub async fn game_router() -> Router {
    Router::new()
        .route("/:uuid/delete", delete(delete::delete_game_delete))
        .route("/:uuid/steps/:uuid", post(steps::post_game_steps))
        .route("/:uuid/start", post(start::post_game_start))
}
