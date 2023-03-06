use serde::Deserialize;

use axum::{extract::Query, Json};
use rand::Rng;

use crate::types::{Coord, Mission, User};
use crate::utils;
use crate::utils::geo::get_geo_data;

#[derive(Deserialize)]
pub struct MissionParams {
    id: String,
}

pub async fn get_missions(params: Query<MissionParams>) -> Json<Vec<Mission>> {
    if !utils::db::check_user(&params.0.id) {
        return Json(vec![]);
    }

    let mut conn = utils::db::user_db_conn().unwrap();
    let user = User::get_user(params.0.id.clone(), &mut conn);

    let way_data_raw = get_geo_data(user.location.latitude, user.location.longitude, 0.005).await;
    let mut way_data: Vec<Coord> = Vec::new();

    for element in way_data_raw["elements"].as_array().unwrap() {
        if element["type"] != "way" {
            continue;
        };

        for coord in element["geometry"].as_array().unwrap() {
            if element["tags"]["building"] == "yes" {
                continue;
            }

            way_data.push(Coord {
                latitude: coord["lat"].as_f64().unwrap(),
                longitude: coord["lon"].as_f64().unwrap(),
            });
        }
    }

    let mut rng = rand::thread_rng();
    let mut response = Vec::new();

    for mission_id in 0..rng.gen_range(2..30) {
        let mission = generate_mission(&mission_id, &way_data);
        if mission.sequence.len() > 8 {
            response.push(mission);
        }
    }
    return Json(response);
}

pub fn generate_mission(mission_id: &i32, way_data: &Vec<Coord>) -> Mission {
    let mut mission = Mission::new();
    mission.id = mission_id.to_string();

    let mut rng = rand::thread_rng();

    if way_data.len() == 0 {
        return mission;
    }

    let mut direction = 0.0;

    if mission_id > &(way_data.len() as i32) {
        return Mission::new();
    }

    let mut total_distance = 0;

    for i in
        (mission_id.clone() as usize)..rng.gen_range((mission_id.clone() as usize)..way_data.len())
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
            })
            .angle(way_data[i]);

        let distance = mission
            .sequence
            .last()
            .unwrap_or(&Coord {
                latitude: 0.0,
                longitude: 0.0,
            })
            .distance(way_data[i]);

        mission.sequence.push(way_data[i]);
        direction = (angle - direction).abs();
        total_distance += distance.round() as i32;
    }

    mission.total_distance = total_distance;
    println!("{}", total_distance);
    return mission;
}
