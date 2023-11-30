use sqlx::MySqlPool;

use crate::utils::db;

use super::DUser;

#[derive(Clone)]
pub struct ApiContext {
    pub user: Option<DUser>,
    pub detactive_db: MySqlPool,
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
