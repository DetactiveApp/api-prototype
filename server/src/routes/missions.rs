use serde::Deserialize;

use axum::{extract::Query, Json};
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

    for _ in 0..rng.gen_range(2..30) {
        response.push(generate_test_mission(&params.id));
    }

    return Json(response);
}

pub fn generate_test_mission(id: &String) -> Mission {
    let mut conn = utils::db::user_db_conn().unwrap();
    let user = User::get_user(id.clone(), &mut conn);
    let mut mission = Mission::new();
    mission.id = "2".to_string();

    return mission;
}
