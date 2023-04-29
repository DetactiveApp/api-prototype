use axum::Json;
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Response {
    url: String,
}

pub async fn request() -> Json<Response> {
    return Json(Response {
        url: String::from("WIP"),
    });
}
