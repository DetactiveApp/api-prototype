use axum::{extract::Query, routing::get, Extension, Json, Router};
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

pub async fn get_story() -> &'static str {
    "Coming Soon."
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
