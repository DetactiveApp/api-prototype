use axum::{extract::Query, Extension, Json};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use sqlx::Row;
use uuid::Uuid;

use crate::{types::ApiContext, utils::geo::get_tags};

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
    image: String,
    distance: u8,
    duration: u16,
}

pub async fn get_request(
    Query(query): Query<GetQuery>,
    Extension(ctx): Extension<ApiContext>,
) -> Result<Json<Vec<GetResponse>>, StatusCode> {
    let location_tags = get_tags(&query.lat, &query.lon).await?;
    let mut stories: Vec<GetResponse> = vec![];

    let story_uuids: Vec<Uuid> = sqlx::query("SELECT uuid FROM stories WHERE active = true;")
        .fetch_all(&ctx.detactive_db)
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
        .iter()
        .map(|row| row.get("uuid"))
        .collect();

    println!("Story Uuids: {:?}", story_uuids);

    for story_uuid in &story_uuids {
        let waypoint_uuids: Vec<Uuid> = sqlx::query(
            "SELECT waypoint_uuid FROM steps WHERE story_uuid = $1 AND waypoint_uuid IS NOT null;",
        )
        .bind(story_uuid)
        .fetch_all(&ctx.detactive_db)
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
        .iter()
        .map(|row| row.get("waypoint_uuid"))
        .collect();

        println!("Waypoints Uuids: {:?}", waypoint_uuids);

        let mut story_tags: Vec<String> = vec![];
        for waypoint_uuid in &waypoint_uuids {
            let tag: Option<String> = match sqlx::query("SELECT place_type FROM waypoints WHERE uuid = $1 AND place_override = false AND place_type != 'random';")
                    .bind(waypoint_uuid)
                    .fetch_one(&ctx.detactive_db)
                    .await
                    {
                        Ok(row) => Some(row.get("place_type")),
                        Err(_) => None,
                    };

            if tag.is_some() {
                story_tags.push(tag.unwrap())
            }
        }

        if story_tags
            .iter()
            .all(|tag: &String| location_tags.contains(tag))
        {
            let story = sqlx::query("SELECT * FROM stories WHERE uuid = $1;")
                .bind(*story_uuid)
                .fetch_one(&ctx.detactive_db)
                .await
                .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

            stories.push(GetResponse {
                uuid: story.get("uuid"),
                title: story.get("title"),
                description: story.get("description"),
                image: story.get("image"),
                distance: 0,
                duration: 0,
            })
        }
    }

    Ok(Json(stories))
}
