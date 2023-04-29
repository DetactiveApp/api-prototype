use sqlx::postgres::{PgPool, PgPoolOptions};

const DETACTIVE_DB: &str = "postgresql://postgres:b814dc1ee44c62b78d1b48e3ff2a43effee817b234fdc0de75db05a5013aaecf@localhost:5432/detactive";
const STICKER_DB: &str = "postgresql://postgres:b814dc1ee44c62b78d1b48e3ff2a43effee817b234fdc0de75db05a5013aaecf@localhost:5432/sticker";

pub async fn detactive_pool() -> PgPool {
    let pool = PgPoolOptions::new()
        .max_connections(50)
        .connect(DETACTIVE_DB)
        .await
        .unwrap();

    sqlx::migrate!("db/detactive").run(&pool).await.unwrap();

    return pool;
}

pub async fn sticker_pool() -> PgPool {
    let pool = PgPoolOptions::new()
        .max_connections(50)
        .connect(STICKER_DB)
        .await
        .unwrap();

    sqlx::migrate!("db/sticker").run(&pool).await.unwrap();

    return pool;
}
