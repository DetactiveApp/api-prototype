use axum::{extract::Query, http::StatusCode, Json};
use redis::{Commands, Connection, RedisError};
use serde::{Deserialize, Serialize};
use serde_json::{json, Value};

use crate::{types::Blueprint, utils};

#[derive(Serialize, Deserialize)]
pub struct GetBlueprintParams {
    id: String,
}

pub async fn get(params: Query<GetBlueprintParams>) -> Result<Json<Blueprint>, StatusCode> {
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return Err(StatusCode::INTERNAL_SERVER_ERROR),
    };

    if !conn.exists(&params.id).unwrap_or(false) {
        return Err(StatusCode::NOT_FOUND);
    }

    let blueprint = Blueprint::get_blueprint(&params.id, &mut conn);

    return Ok(Json(blueprint));
}

#[derive(Serialize, Deserialize, Debug)]
pub struct PostBlueprintParams {
    blueprint: Blueprint,
}

pub async fn post(Json(mut body): Json<PostBlueprintParams>) -> Result<Json<String>, StatusCode> {
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return Err(StatusCode::INTERNAL_SERVER_ERROR),
    };

    body.blueprint.to_db(&mut conn);
    return Ok(Json(String::from(
        body.blueprint.metadata["id"].as_str().unwrap(),
    )));
}

pub async fn patch(
    params: Query<GetBlueprintParams>,
    Json(mut body): Json<PostBlueprintParams>,
) -> StatusCode {
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return StatusCode::INTERNAL_SERVER_ERROR,
    };

    if !conn.exists(&params.id).unwrap_or(false) {
        return StatusCode::NOT_FOUND;
    }

    let blueprint_json = serde_json::to_string(&body.blueprint).unwrap();
    () = conn.set(&params.id, blueprint_json).unwrap();
    return StatusCode::OK;
}

pub async fn delete(params: Query<GetBlueprintParams>) -> StatusCode {
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return StatusCode::INTERNAL_SERVER_ERROR,
    };

    if !conn.exists(&params.id).unwrap_or(false) {
        return StatusCode::NOT_FOUND;
    }

    let del_result: Result<(), RedisError> = conn.del(&params.id);
    if let Err(_) = del_result {
        return StatusCode::INTERNAL_SERVER_ERROR;
    }

    return StatusCode::OK;
}

pub async fn get_labels() -> Result<Json<Vec<Value>>, StatusCode> {
    let mut conn: Connection = match utils::db::blueprint_db_conn() {
        Ok(conn) => conn,
        Err(_) => return Err(StatusCode::INTERNAL_SERVER_ERROR),
    };

    let keys: Vec<String> = conn.keys("*").unwrap();
    let mut labels: Vec<Value> = vec![];
    for key in keys {
        let value_str: String = conn.get(&key).unwrap();
        let value: Value = serde_json::from_str(&value_str).unwrap();
        labels.push(json!({ "id": value["metadata"]["id"].as_str().unwrap(), "tags": value["metadata"]["tags"].as_array().unwrap() }));
    }

    return Ok(Json(labels));
}
