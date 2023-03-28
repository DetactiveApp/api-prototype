use axum::{extract::Query, http::StatusCode, Json};
use redis::Connection;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::types::{Coord, User};

use crate::utils;

#[derive(Deserialize)]
pub struct RegisterParams {
    name: String,
}

pub async fn register(params: Query<RegisterParams>) -> Result<Json<User>, StatusCode> {
    let mut conn: Connection = match utils::db::user_db_conn() {
        Ok(conn) => conn,
        Err(_) => return Err(StatusCode::INTERNAL_SERVER_ERROR),
    };

    let user = User::new(Uuid::new_v4().to_string(), params.0.name);
    user.to_db(&mut conn);
    return Ok(Json(user));
}

#[derive(Serialize, Deserialize)]
pub struct GetUserParams {
    id: String,
}

pub async fn get_user(params: Query<GetUserParams>) -> Result<Json<User>, StatusCode> {
    let mut conn: Connection = match utils::db::user_db_conn() {
        Ok(conn) => conn,
        Err(_) => return Err(StatusCode::INTERNAL_SERVER_ERROR),
    };
    let user = User::get_user(params.0.id, &mut conn);
    return Ok(Json(user));
}

#[derive(Serialize, Deserialize)]
pub struct PatchUserParams {
    location: Coord,
}

pub async fn patch_user(params: Query<GetUserParams>, body: Json<PatchUserParams>) -> Json<User> {
    let mut conn = utils::db::user_db_conn().unwrap();
    let mut user = User::get_user(params.0.id, &mut conn);

    user.location = body.0.location;
    user.to_db(&mut conn);

    return Json(user);
}
