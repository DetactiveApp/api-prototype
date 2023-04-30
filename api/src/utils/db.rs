use sqlx::postgres::{PgPool, PgPoolOptions};
use std::env;

pub async fn detactive_pool() -> PgPool {
    let pool = PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("DETACTIVE_DB_URL").expect("Could not find DETACTIVE_DB_URL."))
        .await
        .expect("Error during detactive-db connection pool initialization.");

    sqlx::migrate!("db/detactive")
        .run(&pool)
        .await
        .expect("Error during migrating data to detactive-db.");
    return pool;
}

pub async fn sticker_pool() -> PgPool {
    let pool = PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("STICKER_DB_URL").expect("Could not find STICKER_DB_URL."))
        .await
        .expect("Error during sticker-db connection pool initialization.");

    sqlx::migrate!("db/sticker")
        .run(&pool)
        .await
        .expect("Error during migrating data to sticker-db.");
    return pool;
}
