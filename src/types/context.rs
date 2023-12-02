use sqlx::PgPool;

use crate::utils::db;

use super::DUser;

#[derive(Clone)]
pub struct ApiContext {
    pub user: Option<DUser>,
    pub detactive_db: PgPool,
    pub company_db: Option<()>,
}

impl ApiContext {
    pub async fn new() -> Self {
        ApiContext {
            user: None,
            detactive_db: db::detactive_pool().await,
            company_db: None,
        }
    }
}
