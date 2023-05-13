mod routes;
mod types;
mod utils;

use std::net::SocketAddr;

use crate::{routes::api, utils::cors};
use axum::{routing::get, Router};

async fn root() -> String {
    return format!("Detactive API v{}", env!("CARGO_PKG_VERSION"));
}

#[tokio::main]
async fn main() {
    println!("Detactive API v{}", env!("CARGO_PKG_VERSION"));

    let addr = SocketAddr::from(([0, 0, 0, 0], 3000));
    let app = Router::new()
        .route("/", get(root))
        .nest(
            &format!("/v{}", &env!("CARGO_PKG_VERSION")[..1]),
            api().await,
        )
        .layer(cors());

    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}
