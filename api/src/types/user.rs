use serde::{Deserialize, Serialize};
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct User {
    pub uuid: Option<Uuid>,
}

impl User {
    pub fn new() -> Self {
        return User { uuid: None };
    }
}
