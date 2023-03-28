mod routes;
mod types;
mod utils;

use axum::{
    http::StatusCode,
    routing::{get, patch},
    Router,
};

use std::net::SocketAddr;

#[tokio::main]
async fn main() {
    println!("Detactive Gameserver {}", env!("CARGO_PKG_VERSION"));

    let app = Router::new()
        .route("/", get(root))
        .route("/user/register", get(routes::user::register))
        .route("/user", get(routes::user::get_user))
        .route("/user", patch(routes::user::patch_user))
        .route("/stories", get(routes::stories::get_stories));

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}

async fn root() -> StatusCode {
    StatusCode::NO_CONTENT
}
