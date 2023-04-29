use serde::{Deserialize, Serialize};
use uuid::Uuid;

use super::Medium;

#[derive(Serialize, Deserialize)]
pub struct Step {
    pub uuid: Option<Uuid>,
    pub story_uuid: Uuid,
    pub waypoint_uuid: Uuid,
    // Data
    pub description: String,
    pub medium: Medium,
    pub src: String,
    pub title: String,
}

impl Step {
    pub fn new() -> Self {
        return Step {
            uuid: None,
            story_uuid: Uuid::new_v4(),
            waypoint_uuid: Uuid::new_v4(),
            description: String::new(),
            medium: Medium::IMAGE,
            src: String::new(),
            title: String::new(),
        };
    }
}
