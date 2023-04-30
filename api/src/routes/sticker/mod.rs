use axum::{
    routing::{get, Route},
    Router,
};

use crate::utils::db;

pub async fn sticker_router() -> Router {
    let detactive_db_pool = db::detactive_pool().await;
    let mut router = Router::new();

    return router;
}
