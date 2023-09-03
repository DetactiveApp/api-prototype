use axum::{
    extract::{Path, Query},
    routing::get,
    Extension, Json, Router,
};
use chrono::NaiveDateTime;
use rand::Rng;
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DError, DStory},
    utils::{contentful, geo::get_tags},
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

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
}

pub async fn get_stories(
    Query(query): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<DStory>>, DError> {
    let location_tags = get_tags(&query.lat, &query.lon).await?;
    let mut filtered_stories = Vec::new();

    let stories = sqlx::query(
        "SELECT stories.uuid, stories.asset_id, stories.description, stories.title, waypoints.place_type, waypoints.place_override FROM stories
        JOIN steps ON stories.uuid = steps.story_uuid
        JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
        WHERE stories.active = true;",
    )
    .fetch_all(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Could not receive stories.", StatusCode::INTERNAL_SERVER_ERROR))?;

    for row in stories.iter() {
        let story_uuid: Uuid = row.get("uuid");

        if filtered_stories
            .iter()
            .any(|story: &DStory| story.uuid == story_uuid)
        {
            continue;
        }

        if row.get::<bool, &str>("place_override")
            || row.get::<&str, &str>("place_type") == "random"
            || location_tags.contains(&row.get::<String, &str>("place_type"))
        {
            let image_url = contentful::url(row.get("asset_id")).await.map_err(|_| {
                DError::from(
                    "Could not reference asset.",
                    StatusCode::INTERNAL_SERVER_ERROR,
                )
            })?;

            filtered_stories.push(DStory {
                uuid: story_uuid,
                image: image_url.unwrap(),
                title: row.get("title"),
                description: row.get("description"),
                distance: rand::thread_rng().gen_range(800..5000),
                duration: rand::thread_rng().gen_range(5..40),
            });
        }
    }

    Ok(Json(filtered_stories))
}
