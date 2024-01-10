use axum::{
    headers::{authorization::Bearer, Authorization, HeaderMapExt},
    http::Request,
    middleware::Next,
    response::Response, extract::Host,
};
use log::error;
use reqwest::StatusCode;

use crate::{
    types::{ApiContext, DError, DUser},
    utils::verify,
};

pub async fn guard<T>(mut request: Request<T>, next: Next<T>, Host(hostname): Host) -> Result<Response, DError> {
    let token: String = request
        .headers()
        .typed_get::<Authorization<Bearer>>()
        .ok_or({
            DError::from(
            &format!("Missing Bearer Token: {:?}", hostname),
            StatusCode::BAD_REQUEST,
        )})?
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

    if let Some(ctx) = request.extensions_mut().get_mut::<ApiContext>() {
        ctx.user = Some(DUser { uuid: claims.sub });
    }

    Ok(next.run(request).await)
}
