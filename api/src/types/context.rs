use sqlx::PgPool;

use crate::utils::db;

#[derive(Clone)]
pub struct ApiContext {
    pub detactive_db: PgPool,
    pub company_db: PgPool,
}

impl ApiContext {
    pub async fn new() -> Self {
        ApiContext {
            detactive_db: db::detactive_pool().await,
            company_db: db::company_pool().await,
        }
    }
}
