use std::vec;

use serde::Deserialize;

use axum::{extract::Query, http::StatusCode, Json};
use rand::Rng;

use crate::types::{Coord, Mission, User};
use crate::utils;
use crate::utils::geo::get_geo_data;

#[derive(Deserialize)]
pub struct MissionParams {
    id: String,
}

pub async fn get_missions(params: Query<MissionParams>) -> Result<Json<Vec<Mission>>, StatusCode> {
    if !utils::db::check_user(&params.0.id) {
        return Err(StatusCode::NO_CONTENT);
    }

    let mut conn = utils::db::user_db_conn().unwrap();
    let user = User::get_user(params.0.id.clone(), &mut conn);

    let geo_data = get_geo_data(user.location.latitude, user.location.longitude, 1000).await;
    let mission_sequence: Vec<Coord> = vec![];

    let mut rng = rand::thread_rng();
    let mut response = Vec::new();

    for mission_id in 0..rng.gen_range(2..30) {
        let mission = generate_mission(&mission_id, &mission_sequence);
        if mission.sequence.len() > 8 {
            response.push(mission);
        }
    }
    return Ok(Json(response));
}

pub fn generate_mission(mission_id: &i32, mission_sequence: &Vec<Coord>) -> Mission {
    let mut mission = Mission::new();
    mission.id = mission_id.to_string();

    let mut rng = rand::thread_rng();

    if mission_sequence.len() == 0 {
        return mission;
    }

    let mut direction = 0.0;

    if mission_id > &(mission_sequence.len() as i32) {
        return Mission::new();
    }

    let mut total_distance = 0;

    for i in (mission_id.clone() as usize)
        ..rng.gen_range((mission_id.clone() as usize)..mission_sequence.len())
    {
        if mission.sequence.len() != 0 && direction < 90.0 {
            continue;
        }

        let angle = mission
            .sequence
            .last()
            .unwrap_or(&Coord {
                latitude: 0.0,
                longitude: 0.0,
                action: None,
            })
            .angle(mission_sequence[i]);

        let distance = mission
            .sequence
            .last()
            .unwrap_or(&Coord {
                latitude: 0.0,
                longitude: 0.0,
                action: None,
            })
            .distance(mission_sequence[i]);

        mission.sequence.push(mission_sequence[i]);
        direction = (angle - direction).abs();
        total_distance += distance.round() as i32;
    }

    mission.total_distance = total_distance;
    println!("{}", total_distance);
    return mission;
}
