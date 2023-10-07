use axum::{extract::Path, Extension, Json};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, StudioStory};

pub async fn load(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> Result<Json<StudioStory>, DError> {
    let row = sqlx::query("SELECT * FROM stories WHERE uuid = $1;")
        .bind(&uuid)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|err| {
            DError::from(&err.to_string(), reqwest::StatusCode::INTERNAL_SERVER_ERROR)
        })?;

    Ok(Json(StudioStory {
        uuid: row.get("uuid"),
        active: row.get("active"),
        asset_id: row.get("asset_id"),
        description: row.get("description"),
        title: row.get("title"),
    }))
}
