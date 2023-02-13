use std::fmt::format;

use serde::Deserialize;

use axum::{extract::Query, http::Request, Json};
use rand::Rng;

use crate::types::{Mission, User};
use crate::utils;

#[derive(Deserialize)]
pub struct MissionParams {
    id: String,
}

pub async fn get_missions(params: Query<MissionParams>) -> Json<Vec<Mission>> {
    if !utils::db::check_user(&params.0.id) {
        return Json(vec![]);
    }
    let mut rng = rand::thread_rng();
    let mut response = Vec::new();

    for mission_id in 0..rng.gen_range(2..30) {
        response.push(generate_mission(&params.id, &mission_id));
    }

    return Json(response);
}

pub fn generate_mission(user_id: &String, mission_id: &i32) -> Mission {
    let mut conn = utils::db::user_db_conn().unwrap();
    let user = User::get_user(user_id.clone(), &mut conn);
    let mut mission = Mission::new();
    mission.id = mission_id.to_string();

    return mission;
}

fn get_street_data() {
    let bbox = 0;

    let url = format!("http://overpass.kumi.systems/api/interpreter?data=[out:json];(way[\"building\"](${bbox});way[\"highway\"](${bbox}););out geom;");
    Request::get(url);
}
