use sqlx::PgPool;

#[derive(Clone)]
pub struct ApiContext {
    pub detactive_db: PgPool,
    pub company_db: PgPool,
}
