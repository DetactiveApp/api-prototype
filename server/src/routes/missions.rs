use serde::Deserialize;

use axum::{extract::Query, Json};
use rand::Rng;

use crate::types::{Coord, Mission, User};
use crate::utils;

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

    let way_data = get_way_data(user.location.latitude, user.location.longitude).await;

    let mut rng = rand::thread_rng();
    let mut response = Vec::new();

    for mission_id in 0..rng.gen_range(2..30) {
        let mission = generate_mission(&mission_id, &way_data);

        if mission.sequence.len() != 0 {
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

    for i in 0..rng.gen_range(0..way_data.len()) {
        mission.sequence.push(way_data[i]);
    }
    return mission;
}

async fn get_way_data(latitude: f64, longitude: f64) -> Vec<Coord> {
    let range: f64 = 0.0001;

    let bbox_p1 = latitude - range;
    let bbox_p2 = longitude - range;
    let bbox_p3 = latitude + range;
    let bbox_p4 = longitude + range;

    let bbox = format!("{bbox_p1}, {bbox_p2}, {bbox_p3}, {bbox_p4}");
    let url = format!("http://overpass.kumi.systems/api/interpreter?data=[out:json];(way[\"building\"]({bbox});way[\"highway\"]({bbox}););out geom;");

    let response = reqwest::get(url)
        .await
        .unwrap()
        .json::<serde_json::Value>()
        .await
        .unwrap();

    let mut way_data: Vec<Coord> = Vec::new();

    for element in response["elements"].as_array().unwrap() {
        if element["type"] != "way" {
            continue;
        };

        for coord in element["geometry"].as_array().unwrap() {
            way_data.push(Coord {
                latitude: coord["lat"].as_f64().unwrap(),
                longitude: coord["lon"].as_f64().unwrap(),
            });
        }
    }

    return way_data;
}
