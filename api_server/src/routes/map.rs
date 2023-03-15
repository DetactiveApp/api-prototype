use std::vec;

use crate::{
    types::{Coord, User},
    utils::{self, db, geo::get_geo_data},
};
use axum::{extract::Query, Json};
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct GetMapParams {
    id: String,
}

#[derive(Serialize, Deserialize)]
pub struct MapObject {
    paths: Vec<Vec<Coord>>,
    buildings: Vec<Vec<Coord>>,
}

impl MapObject {
    pub fn empty() -> Self {
        return Self {
            paths: vec![],
            buildings: vec![],
        };
    }
}

pub async fn get_map(params: Query<GetMapParams>) -> Json<MapObject> {
    if !utils::db::check_user(&params.0.id) {
        return Json(MapObject::empty());
    }

    let mut conn = db::user_db_conn().unwrap();
    let user = User::get_user(params.0.id.clone(), &mut conn);

    let way_data_raw = get_geo_data(user.location.latitude, user.location.longitude, 0.003).await;

    let mut paths: Vec<Vec<Coord>> = vec![];
    let mut buildings: Vec<Vec<Coord>> = vec![];

    for element in way_data_raw["elements"].as_array().unwrap() {
        if element["type"] != "way" {
            return Json(MapObject::empty());
        }

        let mut path: Vec<Coord> = vec![];
        let mut building: Vec<Coord> = vec![];

        for coord in element["geometry"].as_array().unwrap() {
            if element["tags"]["building"] == "yes" {
                building.push(Coord {
                    latitude: coord["lat"].as_f64().unwrap(),
                    longitude: coord["lon"].as_f64().unwrap(),
                })
            } else {
                path.push(Coord {
                    latitude: coord["lat"].as_f64().unwrap(),
                    longitude: coord["lon"].as_f64().unwrap(),
                })
            }
        }

        paths.push(path);
        buildings.push(building);
    }

    let map_data: MapObject = MapObject {
        paths: paths,
        buildings: buildings,
    };
    return Json(map_data);
}
