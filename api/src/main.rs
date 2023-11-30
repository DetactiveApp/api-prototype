mod routes;
mod types;
mod utils;

use std::net::SocketAddr;

#[cfg(feature = "dev")]
use dotenv::dotenv;

use crate::{routes::api, utils::cors};
use axum::{routing::get, Router};

async fn root() -> String {
    format!("Detactive API v{}", env!("CARGO_PKG_VERSION"))
}

#[tokio::main]
async fn main() {
    println!("Detactive API v{}", env!("CARGO_PKG_VERSION"));

    #[cfg(feature = "dev")]
    dotenv().ok();
    env_logger::init();

    let addr = SocketAddr::from(([0, 0, 0, 0], 3000));
    let app = Router::new()
        .nest(
            &format!("/v{}", &env!("CARGO_PKG_VERSION")[..1]),
            api().await,
        )
        .route("/", get(root))
        .layer(cors());

    axum::Server::bind(&addr)
        .serve(app.into_make_service())
        .await
        .unwrap();
}
