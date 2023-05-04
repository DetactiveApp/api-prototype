mod routes;
mod types;
mod utils;

use std::net::SocketAddr;

use crate::{routes::api, utils::cors};
use axum::Router;
use axum_server::tls_rustls::RustlsConfig;

#[tokio::main]
async fn main() {
    println!("Detactive API v{}", env!("CARGO_PKG_VERSION"));

    let domain = env!("ACME_DOMAIN");

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));
    let app = Router::new()
        .nest(
            &format!("/api/v{}", &env!("CARGO_PKG_VERSION")[..1]),
            api().await,
        )
        .layer(cors());

    match RustlsConfig::from_pem_file(
        format!("/var/www/{}", domain),
        format!("/var/www/{}", domain),
    )
    .await
    {
        Ok(config) => {
            axum_server::bind_rustls(addr, config)
                .serve(app.into_make_service())
                .await
                .unwrap();
        }
        Err(_) => {
            axum_server::bind(addr)
                .serve(app.into_make_service())
                .await
                .unwrap();
        }
    }
}
