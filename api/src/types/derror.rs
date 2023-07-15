use axum::{response::IntoResponse, Json};
use reqwest::StatusCode;
use serde::Serialize;

#[derive(Serialize)]
pub struct DError {
    pub code: u8,
    pub reason: String,
}

impl IntoResponse for DError {
    fn into_response(self) -> axum::response::Response {
        match self.code {
            _ => (StatusCode::INTERNAL_SERVER_ERROR, Json(self)).into_response(),
        }
    }
}
