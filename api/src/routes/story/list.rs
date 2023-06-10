use axum::{extract::Query, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{types::ApiContext, utils::geo::get_local_location_tags};

#[derive(Serialize, Deserialize)]
pub struct GetQuery {
    lat: f64,
    lon: f64,
}

#[derive(Serialize, Deserialize)]
pub struct GetResponse {
    uuid: Uuid,
    title: String,
    description: String,
    distance: u8,
    duration: u16,
    tags: Vec<String>,
    difficulty: f32,
}

pub async fn get_request(
    Query(query): Query<GetQuery>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<GetResponse>>, StatusCode> {
    let location_tags = get_local_location_tags(&query.lat, &query.lon).await?;
    let mut stories: Vec<GetResponse> = vec![];

    let story_uuids: Vec<Uuid> = sqlx::query("SELECT uuid FROM stories WHERE active = true;")
        .fetch_all(&ctx.detactive_db)
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
        .iter()
        .map(|row| row.get("uuid"))
        .collect();

    for story_uuid in &story_uuids {
        let story_waypoints: Vec<Uuid> =
            sqlx::query("SELECT waypoint_uuid FROM steps WHERE story_uuid = $1;")
                .bind(story_uuid)
                .fetch_all(&ctx.detactive_db)
                .await
                .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
                .iter()
                .map(|row| row.get("waypoint_uuid"))
                .collect();

        let mut story_tags: Vec<String> = vec![];
        for story_waypoint in &story_waypoints {
            story_tags.push(
                sqlx::query(
                    "SELECT place_type FROM waypoints WHERE uuid = $1 AND place_override = false",
                )
                .bind(story_waypoint)
                .fetch_one(&ctx.detactive_db)
                .await
                .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
                .get("place_type"),
            );
        }

        if story_tags.iter().all(|tag| location_tags.contains(tag)) {
            stories.push(GetResponse {
                uuid: *story_uuid,
                title: String::new(),
                description: String::new(),
                distance: 0,
                duration: 0,
                tags: vec![],
                difficulty: 0.0,
            })
        }
    }

    Ok(Json(stories))
}
