use axum::{routing::post, Router};

mod register;

pub async fn users_router() -> Router {
    return Router::new().route("register", post(register::post_users_register));
}
