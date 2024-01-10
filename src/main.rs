mod routes;
mod types;
mod utils;

use std::{env, net::SocketAddr};

use crate::{routes::api, utils::cors};
use axum::{routing::get, Router};

async fn root() -> String {
    format!("Detactive API [Prototype] v{}", env!("CARGO_PKG_VERSION"))
}

#[tokio::main]
async fn main() {
    println!("Detactive API v{}", env!("CARGO_PKG_VERSION"));
    env_logger::init();

    let _guard = sentry::init(("https://d10ba764eafebb7720e11aca89b4cb79@o4506285486702592.ingest.sentry.io/4506327435182080", sentry::ClientOptions {
        release: sentry::release_name!(),
        ..Default::default()
      }));

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
