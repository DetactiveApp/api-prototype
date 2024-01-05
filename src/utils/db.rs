use sqlx::postgres::{PgPool, PgPoolOptions};
use std::env;

pub async fn detactive_pool() -> PgPool {
    PgPoolOptions::new()
        .max_connections(10000)
        .connect(&env::var("DETACTIVE_DB").expect("Could not find DETACTIVE_DB."))
        .await
        .expect("Error during detactive-db connection pool initialization.")
}

pub async fn company_pool() -> PgPool {
    PgPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("COMPANY_DB").expect("Could not find COMPANY_DB."))
        .await
        .expect("Error during company-db connection pool initialization.")
}
