use std::vec;

use serde::Deserialize;

use axum::{extract::Query, http::StatusCode, Json};
use rand::Rng;

use crate::types::{Coord, Story, User};
use crate::utils;
use crate::utils::geo::get_geo_context;

#[derive(Deserialize)]
pub struct StoryParams {
    id: String,
}

pub async fn get_stories(params: Query<StoryParams>) -> Result<Json<Vec<Story>>, StatusCode> {
    if !utils::db::check_user(&params.0.id) {
        return Err(StatusCode::NO_CONTENT);
    }

    let mut conn = utils::db::user_db_conn().unwrap();
    let user = User::get_user(params.0.id.clone(), &mut conn);

    let way_data_raw = get_geo_context(user.location.latitude, user.location.longitude, 1000).await;
    let mut way_data: Vec<Coord> = Vec::new();

    let mut rng = rand::thread_rng();
    let mut response = Vec::new();

    return Ok(Json(response));
}

pub fn generate_mission(story_id: &i32, story_sequence: &Vec<Coord>) -> Story {
    let mut story = Story::new();
    story.id = story_id.to_string();

    let mut rng = rand::thread_rng();

    if story_sequence.len() == 0 {
        return story;
    }

    let mut direction = 0.0;

    if story_id > &(story_sequence.len() as i32) {
        return Story::new();
    }

    let mut total_distance = 0;

    for i in (story_id.clone() as usize)
        ..rng.gen_range((story_id.clone() as usize)..story_sequence.len())
    {
        if story.sequence.len() != 0 && direction < 90.0 {
            continue;
        }
        let angle = story
            .sequence
            .last()
            .unwrap_or(&Coord {
                latitude: 0.0,
                longitude: 0.0,
                action: None,
            })
            .angle(story_sequence[i]);

        let distance = story
            .sequence
            .last()
            .unwrap_or(&Coord {
                latitude: 0.0,
                longitude: 0.0,
                action: None,
            })
            .distance(story_sequence[i]);

        story.sequence.push(story_sequence[i]);
        direction = (angle - direction).abs();
        total_distance += distance.round() as i32;
    }

    story.total_distance = total_distance;
    println!("{}", total_distance);
    return story;
}
