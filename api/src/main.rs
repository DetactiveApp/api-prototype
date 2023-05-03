mod routes;
mod types;
mod utils;

use std::{net::SocketAddr, path::PathBuf, sync::Arc};

use crate::{routes::api, utils::cors};
use axum::Router;
use rustls_acme::{caches::DirCache, futures_rustls::rustls::ServerConfig, AcmeConfig};

#[tokio::main]
async fn main() {
    println!("Detactive API v{}", env!("CARGO_PKG_VERSION"));

    let state = AcmeConfig::new(vec!["test-api.detactive.de"])
        .contact(vec!["mailto: max@maxbeier.dev"])
        .cache_option(Some(PathBuf::new().clone()).map(DirCache::new))
        .directory_lets_encrypt(true)
        .state();

    let rustls_config = ServerConfig::builder()
        .with_safe_defaults()
        .with_no_client_auth()
        .with_cert_resolver(state.resolver());

    let acceptor = state.axum_acceptor(Arc::new(rustls_config));

    let addr = SocketAddr::from(([0, 0, 0, 0], 8080));

    let app = Router::new()
        .nest(
            &format!("/api/v{}", &env!("CARGO_PKG_VERSION")[..1]),
            api().await,
        )
        .layer(cors());

    axum_server::bind(addr)
        .acceptor(acceptor)
        .serve(app.into_make_service())
        .await
        .unwrap();
}
