use sqlx::mysql::{MySqlPool, MySqlPoolOptions};
use std::env;

pub async fn detactive_pool() -> MySqlPool {
    MySqlPoolOptions::new()
        .max_connections(100)
        .connect(&env::var("DETACTIVE_DB").expect("Could not find DETACTIVE_DB."))
        .await
        .expect("Error during detactive-db connection pool initialization.")
}

// pub async fn company_pool() -> MySqlPool {
//     PgPoolOptions::new()
//         .max_connections(100)
//         .connect(&env::var("COMPANY_DB_URL").expect("Could not find COMPANY_DB_URL."))
//         .await
//         .expect("Error during company-db connection pool initialization.")
// }
