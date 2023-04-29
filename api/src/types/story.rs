use serde::{Deserialize, Serialize};
use uuid::Uuid;

use super::Step;

#[derive(Serialize, Deserialize)]
pub struct Story {
    pub uuid: Option<Uuid>,
    pub steps: Vec<Step>,
    pub description: String,
    pub title: String,
}

impl Story {
    pub fn new() -> Self {
        return Story {
            uuid: None,
            steps: vec![],
            description: String::new(),
            title: String::new(),
        };
    }
}
