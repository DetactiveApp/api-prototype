use axum::{
    routing::{delete, post},
    Router,
};

mod delete;
mod forward;
mod start;

pub async fn game_router() -> Router {
    Router::new()
        .route("/:uuid/delete", delete(delete::delete_game_delete))
        .route("/:uuid/steps/:uuid", post(forward::post_game_forward))
        .route("/:uuid/start", post(start::post_game_start))
}
