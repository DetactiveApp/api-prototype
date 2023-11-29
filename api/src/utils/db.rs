use sqlx::postgres::{PgPool, PgPoolOptions};
use std::env;

pub async fn detactive_pool() -> PgPool {
    PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("DETACTIVE_DB_URL").expect("Could not find DETACTIVE_DB_URL."))
        .await
        .expect("Error during detactive-db connection pool initialization.")
}

pub async fn company_pool() -> PgPool {
    PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("COMPANY_DB_URL").expect("Could not find COMPANY_DB_URL."))
        .await
        .expect("Error during company-db connection pool initialization.")
}

pub async fn migrate_db() {
    sqlx::migrate!("db/detactive")
        .run(&detactive_pool().await)
        .await
        .expect("Error during migrating data to detactive-db.");

    sqlx::migrate!("db/company")
        .run(&company_pool().await)
        .await
        .map_err(|err| eprintln!("{}", err))
        .expect("Error during migrating data to company-db.");
}
