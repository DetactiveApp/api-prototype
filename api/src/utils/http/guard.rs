use axum::{
    headers::{authorization::Bearer, Authorization, HeaderMapExt},
    http::Request,
    middleware::Next,
    response::Response,
};
use log::error;
use reqwest::StatusCode;
use sqlx::Row;

use crate::{
    types::{ApiContext, DError, DUser},
    utils::verify,
};

pub async fn guard<T>(mut request: Request<T>, next: Next<T>) -> Result<Response, DError> {
    let token: String = request
        .headers()
        .typed_get::<Authorization<Bearer>>()
        .ok_or(DError::from(
            "Missing Bearer Token.",
            StatusCode::BAD_REQUEST,
        ))?
        .token()
        .to_owned();

    let claims: super::jwt::Claims = verify(&token)?;

    let ctx: &ApiContext = request
        .extensions()
        .get::<ApiContext>()
        .ok_or_else(|| DError::from("Internal Server Error.", StatusCode::INTERNAL_SERVER_ERROR))?;

    sqlx::query("SELECT uuid FROM users WHERE uuid = $1;")
        .bind(claims.sub)
        .fetch_one(&ctx.detactive_db)
        .await
        .map_err(|_| {
            error!("User {} not found.", claims.sub);
            DError::from("User not found.", StatusCode::NOT_FOUND)
        })?;

    request
        .extensions_mut()
        .get_mut::<ApiContext>()
        .map(|ctx| ctx.user = Some(DUser { uuid: claims.sub }));

    Ok(next.run(request).await)
}
