use axum::{extract::Path, Json};
use chrono::Duration;
use serde::Serialize;
use uuid::Uuid;

use crate::{types::DError, utils::encode};

#[derive(Serialize)]
pub struct Response {
    pub token: String,
}

pub async fn get_user_token(Path(user_uuid): Path<Uuid>) -> Result<Json<Response>, DError> {
    let token = encode(user_uuid, Duration::minutes(30))?;

    Ok(Json(Response { token: token }))
}
