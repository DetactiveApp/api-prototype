use axum::{extract::Query, http::StatusCode, Json};
use redis::Connection;
use serde::{Deserialize, Serialize};

use crate::{types::Blueprint, utils};

#[derive(Serialize, Deserialize)]
pub struct GetBlueprintParams {
    id: String,
}

pub async fn get(params: Query<GetBlueprintParams>) -> Result<Json<Blueprint>, StatusCode> {
    println!("GET");
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return Err(StatusCode::INTERNAL_SERVER_ERROR),
    };

    let blueprint = Blueprint::get_blueprint(&params.id, &mut conn);

    return Ok(Json(blueprint));
}

#[derive(Serialize, Deserialize, Debug)]
pub struct PostBlueprintParams {
    blueprint: Blueprint,
}

pub async fn post(Json(mut body): Json<PostBlueprintParams>) -> StatusCode {
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(err) => {
            println!("{}", err);
            return StatusCode::INTERNAL_SERVER_ERROR;
        }
    };

    body.blueprint.to_db(&mut conn);

    //Blueprint::get_blueprint(&body.blueprint.metadata.clone().unwrap().id, &mut conn);
    return StatusCode::OK;
}

#[derive(Serialize, Deserialize)]
pub struct PatchBlueprintParams {
    blueprint: Blueprint,
}

pub async fn patch(
    params: Query<GetBlueprintParams>,
    body: Json<PatchBlueprintParams>,
) -> StatusCode {
    println!("PATCH");
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return StatusCode::INTERNAL_SERVER_ERROR,
    };

    return StatusCode::OK;
}

pub async fn get_list() -> Result<Json<Vec<Blueprint>>, StatusCode> {
    return Err(StatusCode::INTERNAL_SERVER_ERROR);
}
