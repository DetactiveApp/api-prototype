use axum::{extract::Query, Json};
use redis::Commands;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

use crate::types::User;

use crate::utils;

#[derive(Serialize, Deserialize)]
pub struct RegisterParams {
    name: String,
}

pub async fn register(params: Query<RegisterParams>) -> Json<User> {
    let mut conn = utils::db::user_db_conn().unwrap();
    let user = User::new(Uuid::new_v4().to_string(), params.0.name);
    &user.to_db(&mut conn);
    return Json(user);
}

#[derive(Serialize, Deserialize)]
pub struct GetUserParams {
    id: String,
}

pub async fn get_user(params: Query<GetUserParams>) -> Json<User> {
    let mut conn = utils::db::user_db_conn().unwrap();
    let mut user = User::new(params.0.id, String::new());
    user.from_db(&mut conn);
    return Json(user);
}

pub async fn patch_user(
    params: Query<GetUserParams>,
    body: axum::extract::Json<serde_json::Value>,
) -> Json<User> {
    let mut conn = utils::db::user_db_conn().unwrap();
    let mut user = User::new(params.0.id, String::new());

    //http://127.0.0.1:8080/user?id=2d672b2e-392e-41a4-b783-3598aa313825
    return Json(user);
}
