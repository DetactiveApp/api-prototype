use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};

use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError};

#[derive(Serialize, Deserialize)]
pub struct StudioListElement {
    title: String,
    uuid: Uuid,
}

pub async fn stories(
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<StudioListElement>>, DError> {
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
            .map(|row| StudioListElement {
                title: row.get("title"),
                uuid: row.get("uuid"),
            })
            .collect(),
    ))
}

pub async fn steps(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> Result<Json<Vec<StudioListElement>>, DError> {
    Ok(Json(
        sqlx::query("SELECT title, uuid FROM steps WHERE story_uuid = $1;")
            .bind(uuid)
            .fetch_all(&ctx.detactive_db)
            .await
            .map_err(|err| {
                log::error!("{}", err);
                DError::from("Failed to fetch steps.", StatusCode::INTERNAL_SERVER_ERROR)
            })?
            .iter()
            .map(|row| StudioListElement {
                title: row.get("title"),
                uuid: row.get("uuid"),
            })
            .collect(),
    ))
}
