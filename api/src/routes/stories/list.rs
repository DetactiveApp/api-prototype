use axum::{extract::Query, Extension, Json};
use rand::Rng;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{
    types::{ApiContext, DError, DStory},
    utils::{contentful, geo::get_tags},
};

#[derive(Serialize, Deserialize)]
pub struct QueryParams {
    lat: f64,
    lon: f64,
}

pub async fn get_request(
    Query(query): Query<QueryParams>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<DStory>>, DError> {
    let location_tags = get_tags(&query.lat, &query.lon).await?;
    let mut uuid_cache: Vec<Uuid> = Vec::new();

    let stories = sqlx::query(
        "SELECT * FROM stories
        JOIN steps ON stories.uuid = steps.story_uuid
        JOIN waypoints ON steps.waypoint_uuid = waypoints.uuid
        WHERE stories.active = true;",
    )
    .fetch_all(&ctx.detactive_db)
    .await
    .map_err(|_| DError::from("Could receive stories.", 0))?;

    let mut filtered_stories = Vec::new();

    for row in stories.iter() {
        let story_uuid: Uuid = row.get("stories.uuid");

        if row.get::<bool, &str>("waypoints.place_override")
            || row.get::<&str, &str>("waypoints.place_type") == "random"
            || location_tags.contains(&row.get::<String, &str>("waypoints.place_type"))
        {
            if uuid_cache.contains(&story_uuid) {
                continue;
            }

            uuid_cache.push(story_uuid);
            let image_url = contentful::url(row.get("stories.asset_id")).await;

            if let Ok(image) = image_url {
                filtered_stories.push(DStory {
                    uuid: story_uuid,
                    image,
                    title: row.get("stories.title"),
                    description: row.get("stories.description"),
                    distance: rand::thread_rng().gen_range(800..5000),
                    duration: rand::thread_rng().gen_range(5..40),
                });
            }
        }
    }

    Ok(Json(filtered_stories))
}
