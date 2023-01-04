mod commands;
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
    println!("Storyhunter Gameserver {}", env!("CARGO_PKG_VERSION"));

    let app = Router::new()
        .route("/", get(root))
        .route("/register", get(commands::user::register))
        .route(
            "/user",
            get(commands::user::get_user).patch(commands::user::patch_user),
        )
        .route("/missions", get(commands::missions::get_missions));

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}

async fn root() -> StatusCode {
    StatusCode::FORBIDDEN
}
