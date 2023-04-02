mod routes;
mod types;
mod utils;

use axum::{
    http::StatusCode,
    routing::{delete, get, patch, post},
    Router,
};

use reqwest::{header, Method};
use tower_http::cors::{Any, CorsLayer};

use std::{net::SocketAddr, time::Duration};

#[tokio::main]
async fn main() {
    println!("Detactive Gameserver {}", env!("CARGO_PKG_VERSION"));

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
        .route("/", get(root))
        .route("/user/register", get(routes::user::register))
        .route("/user", get(routes::user::get_user))
        .route("/user", patch(routes::user::patch_user))
        //.route("/stories", get(routes::stories::get_stories))
        .route("/blueprint", get(routes::blueprint::get))
        .route("/blueprint", post(routes::blueprint::post))
        .route("/blueprint", patch(routes::blueprint::patch))
        .route("/blueprint", delete(routes::blueprint::delete))
        .route("/blueprint/labels", get(routes::blueprint::get_labels))
        .layer(cors);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}

async fn root() -> StatusCode {
    StatusCode::NO_CONTENT
}
