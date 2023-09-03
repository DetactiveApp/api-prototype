use axum::response::IntoResponse;
use reqwest::StatusCode;

#[derive(Debug, Clone)]
pub struct DError {
    pub status_code: StatusCode,
    pub reason: String,
}

impl IntoResponse for DError {
    fn into_response(self) -> axum::response::Response {
        (self.status_code, self.reason).into_response()
    }
}

impl DError {
    pub fn from(reason: &str, status_code: StatusCode) -> Self {
        Self {
            status_code,
            reason: reason.to_string(),
        }
    }
}
