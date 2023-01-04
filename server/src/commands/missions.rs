use serde::{Deserialize, Serialize};

use axum::{extract::Query, Json};
use rand::Rng;

use crate::types::Mission;
use crate::utils;

#[derive(Serialize, Deserialize)]
pub struct MissionParams {
    id: String,
}

pub async fn get_missions(params: Query<MissionParams>) -> Json<Vec<Mission>> {
    if !utils::db::check_user(params.0.id) {
        return Json(vec![]);
    }
    let mut rng = rand::thread_rng();
    let mut response = Vec::new();

    for _ in 0..rng.gen_range(2..30) {
        response.push(Mission::new());
    }

    return Json(response);
}
