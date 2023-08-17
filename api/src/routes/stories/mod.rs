use axum::{
    extract::Path,
    routing::{get, post},
    Extension, Json, Router,
};
use uuid::Uuid;

use crate::types::{ApiContext, DError, DStory};

mod forward;
mod list;
mod start;

async fn get_story(
    Path(uuid): Path<Uuid>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<DStory>, DError> {
    DStory::from_db(uuid, &ctx.detactive_db)
        .await
        .map(|story| Json(story))
}

pub async fn story_router() -> Router {
    Router::new()
        .route("/:id", get(get_story))
        .route("/list", get(list::get_request))
        .route("/start", post(start::post_story_start))
        .route("/:id/forward", get(forward::get_request))
}
