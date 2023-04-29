mod routes;
mod types;
mod utils;

use axum::{Extension, Router};

use reqwest::{header, Method};
use sqlx::PgPool;
use tower_http::cors::{Any, CorsLayer};

use std::{net::SocketAddr, time::Duration};

use crate::routes::api;

#[tokio::main]
async fn main() {
    println!("Detactive API v{}", env!("CARGO_PKG_VERSION"));

    let cors = CorsLayer::new()
        .allow_headers(vec![
            header::ACCEPT,
            header::ACCEPT_LANGUAGE,
            header::AUTHORIZATION,
            header::CONTENT_LANGUAGE,
            header::CONTENT_TYPE,
        ])
        .allow_methods(vec![
            Method::POST,
            Method::GET,
            Method::PATCH,
            Method::DELETE,
        ])
        .allow_origin(Any)
        .max_age(Duration::from_secs(60 * 60));

    let detactive_db_pool: PgPool = utils::db::detactive_pool().await;
    let sticker_db_pool: PgPool = utils::db::sticker_pool().await;

    let app = Router::new()
        .nest(&format!("/api/v{}", &env!("CARGO_PKG_VERSION")[..1]), api())
        .layer(Extension(detactive_db_pool))
        .layer(Extension(sticker_db_pool))
        .layer(cors);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}
