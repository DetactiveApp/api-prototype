use axum::Router;

mod sticker;
mod user;

use sticker::sticker_router;
use user::user_router;

pub fn api() -> Router {
    return Router::new()
        .nest("/user", user_router())
        .nest("/sticker", sticker_router());
}
