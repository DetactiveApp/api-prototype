mod routes;
mod types;
mod utils;

use axum::Router;

use reqwest::{header, Method};
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

    let app = Router::new()
        .nest(&format!("/api/v{}", &env!("CARGO_PKG_VERSION")[..1]), api())
        .layer(cors);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}
