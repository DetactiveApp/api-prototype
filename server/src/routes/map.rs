use std::vec;

use axum::{extract::Query, Json};
use serde::{Deserialize, Serialize};

use crate::{
    types::{Coord, User},
    utils::{self, db, geo::get_geo_data},
};

#[derive(Serialize, Deserialize)]
pub struct GetMapParams {
    id: String,
}

pub async fn get_map(params: Query<GetMapParams>) -> Json<Vec<Coord>> {
    if !utils::db::check_user(&params.0.id) {
        return Json(vec![]);
    }

    let mut conn = db::user_db_conn().unwrap();
    let user = User::get_user(params.0.id.clone(), &mut conn);

    let way_data_raw = get_geo_data(user.location.latitude, user.location.longitude).await;
    let mut map_data: Vec<Coord> = vec![];

    for element in way_data_raw["elements"].as_array().unwrap() {
        if element["type"] != "way" {
            continue;
        };

        for coord in element["geometry"].as_array().unwrap() {
            map_data.push(Coord {
                latitude: coord["lat"].as_f64().unwrap(),
                longitude: coord["lon"].as_f64().unwrap(),
            });
        }
    }
    return Json(map_data);
}
