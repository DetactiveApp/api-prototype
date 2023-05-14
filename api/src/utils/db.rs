use sqlx::postgres::{PgPool, PgPoolOptions};
use std::env;

pub async fn detactive_pool() -> PgPool {
    let pool = PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("DETACTIVE_DB_URL").expect("Could not find DETACTIVE_DB_URL."))
        .await
        .expect("Error during detactive-db connection pool initialization.");
    return pool;
}

pub async fn company_pool() -> PgPool {
    let pool = PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("COMPANY_DB_URL").expect("Could not find COMPANY_DB_URL."))
        .await
        .expect("Error during company-db connection pool initialization.");

    return pool;
}

pub async fn migrate_db() {
    sqlx::migrate!("db/detactive")
        .run(&detactive_pool().await)
        .await
        .expect("Error during migrating data to detactive-db.");

    sqlx::migrate!("db/company")
        .run(&company_pool().await)
        .await
        .expect("Error during migrating data to sticker-db.");
}
