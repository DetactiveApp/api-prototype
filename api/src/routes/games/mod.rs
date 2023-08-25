use axum::{
    extract::Path,
    routing::{delete, get, post},
    Extension, Json, Router,
};
use uuid::Uuid;

use crate::types::{ApiContext, DError, DStory};

mod delete;
mod forward;
mod list;
mod start;

async fn get_game(
    Path(uuid): Path<Uuid>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DStory>, DError> {
    DStory::from_db(uuid, &ctx.detactive_db)
        .await
        .map(|story| Json(story))
}

pub async fn game_router() -> Router {
    Router::new()
        .route("/:uuid/delete", delete(delete::delete_game_delete))
        .route("/:uuid/steps/forward", post(forward::post_game_forward))
        .route("/:uuid/start", post(start::post_game_start))
        .route("/near", get(list::get_game_list))
        .route("/:uuid", get(get_game))
}
