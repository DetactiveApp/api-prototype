use axum::{
    headers::{authorization::Bearer, Authorization, HeaderMapExt},
    http::Request,
    middleware::Next,
    response::Response,
};
use reqwest::StatusCode;

use crate::utils::verify;

pub async fn guard<T>(request: Request<T>, next: Next<T>) -> Result<Response, StatusCode> {
    let token = request
        .headers()
        .typed_get::<Authorization<Bearer>>()
        .ok_or(StatusCode::BAD_REQUEST)?
        .token()
        .to_owned();

    verify(&token)?;

    Ok(next.run(request).await)
}
