use axum::{extract::Path, routing::get, Extension, Json, Router};
use chrono::NaiveDateTime;
use rand::Rng;
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DError, DStory},
    utils::contentful,
};

pub async fn stories_router() -> Router {
    Router::new()
        .route("/:uuid", get(get_story))
        .route("/", get(get_stories))
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct UserActivity {
    pub started_at: NaiveDateTime,
    pub finished_at: Option<NaiveDateTime>,
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct Response {
    story: DStory,
    user_activities: Vec<UserActivity>,
}

pub async fn get_story(
    Extension(ctx): Extension<ApiContext>,
    Path(story_uuid): Path<Uuid>,
) -> Result<Json<Response>, DError> {
    let user_uuid: Uuid = ctx.clone().user.unwrap().uuid;

    let story: DStory = DStory::from_db(story_uuid, &ctx.detactive_db).await?;

    let user_activities: Vec<UserActivity> =
        sqlx::query("SELECT * FROM user_stories WHERE story_uuid = $1 AND user_uuid = $2 AND deleted_at IS null;")
        .bind(story_uuid)
        .bind(user_uuid)
        .fetch_all(&ctx.detactive_db)
        .await
        .unwrap()
        .iter()
        .map(|row| UserActivity{started_at: row.get("created_at"), finished_at: row.try_get("finished_at").ok()})
        .collect();

    Ok(Json(Response {
        story: story,
        user_activities: user_activities,
    }))
}

pub async fn get_stories(
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<DStory>>, DError> {
    let mut stories: Vec<DStory> = vec![];
    let rows = sqlx::query(
        "SELECT * FROM stories
        WHERE active = true;",
    )
    .fetch_all(&ctx.detactive_db)
    .await
    .map_err(|_| {
        DError::from(
            "Could not receive stories.",
            StatusCode::INTERNAL_SERVER_ERROR,
        )
    })?;

    for row in rows {
        stories.push(DStory {
            uuid: row.get("uuid"),
            image: contentful::url(row.get("asset_id")).await?,
            title: row.get("title"),
            description: row.get("description"),
            distance: rand::thread_rng().gen_range(800..5000),
            duration: rand::thread_rng().gen_range(5..40),
        })
    }

    Ok(Json(stories))
}
