mod routes;
mod types;
mod utils;

use crate::routes::api;
use axum::Router;
use reqwest::{header, Method};
use std::{net::SocketAddr, time::Duration};
use tower_http::cors::{Any, CorsLayer};

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

    let app = Router::new()
        .nest(
            &format!("/api/v{}", &env!("CARGO_PKG_VERSION")[..1]),
            api().await,
        )
        .layer(cors);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}
