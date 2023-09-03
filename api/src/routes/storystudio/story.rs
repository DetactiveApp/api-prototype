use axum::{extract::Path, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::types::{ApiContext, DError, MediaType};

#[derive(Serialize, Deserialize)]
pub struct PostBody {
    title: String,
    description: String,
    image: String,
    active: bool,
}

#[derive(Serialize, Deserialize)]
pub struct PostResponse {
    uuid: Uuid,
}

pub async fn post_request(
    Extension(ctx): Extension<ApiContext>,
    Json(body): Json<PostBody>,
) -> Result<Json<PostResponse>, DError> {
    return match sqlx::query(
        "INSERT INTO stories (title, description, image, active) VALUES ($1, $2, $3, $4) RETURNING uuid",
    )
    .bind(body.title)
    .bind(body.description)
    .bind(body.image)
    .bind(body.active)
    .fetch_one(&ctx.detactive_db)
    .await
    {
        Ok(result) => Ok(Json(PostResponse {
            uuid: result.get("uuid"),
        })),
        Err(_) => Err(DError::from("Could not upload story.", StatusCode::INTERNAL_SERVER_ERROR)),
    };
}

#[derive(Serialize, Deserialize)]
pub struct PutBody {
    title: String,
    description: String,
    active: bool,
}

pub async fn put_request(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
    Json(body): Json<PutBody>,
) -> StatusCode {
    return match sqlx::query(
        "UPDATE stories SET title = $1, description = $2, active = $3 WHERE uuid = $4;",
    )
    .bind(body.title)
    .bind(body.description)
    .bind(body.active)
    .bind(uuid)
    .execute(&ctx.detactive_db)
    .await
    {
        Ok(_) => StatusCode::OK,
        Err(_) => StatusCode::INTERNAL_SERVER_ERROR,
    };
}

#[derive(Serialize, Deserialize)]
pub struct Step {
    uuid: Uuid,
    story_uuid: Uuid,
    waypoint_uuid: Option<Uuid>,
    description: String,
    media_type: Option<MediaType>,
    src: String,
    title: String,
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    title: String,
    description: String,
    active: bool,
    steps: Vec<Step>,
}

pub async fn get_request(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> Result<Json<GetResponse>, DError> {
    let mut response = GetResponse {
        title: String::new(),
        description: String::new(),
        active: false,
        steps: vec![],
    };

    match sqlx::query("SELECT * FROM stories WHERE uuid = $1;")
        .bind(uuid)
        .fetch_one(&ctx.detactive_db)
        .await
    {
        Ok(row) => {
            response.title = row.get("title");
            response.description = row.get("description");
            response.active = row.get("active");
        }
        Err(_) => {
            return Err(DError::from(
                "Could not receive given story.",
                StatusCode::INTERNAL_SERVER_ERROR,
            ))
        }
    }

    match sqlx::query("SELECT * FROM steps WHERE story_uuid = $1;")
        .bind(uuid)
        .fetch_all(&ctx.detactive_db)
        .await
    {
        Ok(rows) => {
            for row in rows {
                response.steps.push(Step {
                    uuid: row.get("uuid"),
                    story_uuid: row.get("story_uuid"),
                    waypoint_uuid: row.get("waypoint_uuid"),
                    description: row.get("description"),
                    media_type: row.get("media_type"),
                    src: row.get("src"),
                    title: row.get("title"),
                })
            }
        }
        Err(_) => {
            return Err(DError::from(
                "Could not receive steps for given story. ",
                StatusCode::INTERNAL_SERVER_ERROR,
            ))
        }
    }

    return Ok(Json(response));
}

pub async fn delete_request(
    Extension(ctx): Extension<ApiContext>,
    Path(uuid): Path<Uuid>,
) -> StatusCode {
    return match sqlx::query("DELETE FROM stories WHERE uuid = $1;")
        .bind(uuid)
        .execute(&ctx.detactive_db)
        .await
    {
        Ok(_) => StatusCode::OK,
        Err(_) => StatusCode::INTERNAL_SERVER_ERROR,
    };
}
