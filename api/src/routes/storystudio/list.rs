use axum::{Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};

use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError};

#[derive(Serialize, Deserialize)]
pub struct StoryListElement {
    title: String,
    uuid: Uuid,
}

pub async fn list(
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<StoryListElement>>, DError> {
    Ok(Json(
        sqlx::query("SELECT title, uuid FROM stories;")
            .fetch_all(&ctx.detactive_db)
            .await
            .map_err(|err| {
                log::error!("{}", err);
                DError::from(
                    "Failed to fetch stories.",
                    StatusCode::INTERNAL_SERVER_ERROR,
                )
            })?
            .iter()
            .map(|row| StoryListElement {
                title: row.get("title"),
                uuid: row.get("uuid"),
            })
            .collect(),
    ))
}
