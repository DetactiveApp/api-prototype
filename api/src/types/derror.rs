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

impl DError {
    pub fn from(reason: &str, code: u8) -> Self {
        Self {
            code: code,
            reason: reason.to_string(),
        }
    }
}
