use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, sqlx::Type)]
#[sqlx(type_name = "ENDINGTYPE")]
#[sqlx(rename_all = "lowercase")]
pub enum EndingType {
    Success,
    Failure,
}
