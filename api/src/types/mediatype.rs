use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, sqlx::Type)]
#[sqlx(type_name = "MEDIATYPE")]
#[sqlx(rename_all = "lowercase")]
pub enum MediaType {
    AUDIO,
    IMAGE,
    VIDEO,
}
