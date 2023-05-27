use axum::{
    routing::{delete, get, post, put},
    Router,
};

mod access;
mod list;
mod step;
mod story;
mod waypoint;

pub async fn storystudio_router() -> Router {
    return Router::new()
        .route("/access", get(access::get_request))
        .route("/list", get(list::get_request))
        //
        .route("/story/new", post(story::post_request))
        .route("/story/:id/update", put(story::put_request))
        .route("/story/:id/load", get(story::get_request))
        .route("/story/:id/delete", delete(story::delete_request))
        //
        .route("/step/new", post(step::post_request))
        .route("/step/:id/update", put(step::put_request))
        .route("/step/:id/delete", delete(step::delete_request))
        //
        .route("/waypoint/new", get(waypoint::new_request))
        .route("/waypoint/:id/update", put(waypoint::put_request))
        .route("/waypoint/:id/delete", delete(waypoint::delete_request));
}
