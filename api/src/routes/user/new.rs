use axum::Json;
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Body {}

#[derive(Serialize, Deserialize)]
pub struct Response {}

pub async fn request(body: Json<Body>) -> Json<Response> {
    return Json(Response {});
}
