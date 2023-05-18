use axum::{Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::ApiContext;

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    uuid: Uuid,
    title: String,
}

pub async fn get_request(
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<GetResponse>>, StatusCode> {
    return match sqlx::query("SELECT uuid, title FROM stories;")
        .fetch_all(&ctx.detactive_db)
        .await
    {
        Ok(result) => Ok(Json(
            result
                .iter()
                .map(|row| GetResponse {
                    uuid: row.get("uuid"),
                    title: row.get("title"),
                })
                .collect(),
        )),
        Err(_) => Err(StatusCode::INTERNAL_SERVER_ERROR),
    };
}
