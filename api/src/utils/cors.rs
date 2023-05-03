use reqwest::{header, Method};
use std::time::Duration;
use tower_http::cors::{Any, CorsLayer};

pub fn cors() -> CorsLayer {
    return CorsLayer::new()
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
}
