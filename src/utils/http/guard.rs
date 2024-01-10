use axum::{
    headers::{authorization::Bearer, Authorization, HeaderMapExt},
    http::Request,
    middleware::Next,
    response::Response,
};
use log::error;
use reqwest::StatusCode;

use crate::{
    types::{ApiContext, DError, DUser},
    utils::verify,
};

pub async fn guard<T>(mut request: Request<T>, next: Next<T>) -> Result<Response, DError> {
    let token: String = request
        .headers()
        .typed_get::<Authorization<Bearer>>()
        .ok_or({
            DError::from(
                &format!("Missing Bearer Token: {:?}", request.uri()),
                StatusCode::BAD_REQUEST,
            )
        })?
        .token()
        .to_owned();

    let claims: super::jwt::Claims = verify(&token)?;

    let ctx: &ApiContext = request.extensions().get::<ApiContext>().ok_or_else(|| {
        DError::captured(
            "Failed to receive api context.",
            StatusCode::INTERNAL_SERVER_ERROR,
            sentry::Level::Error,
        )
    })?;

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
