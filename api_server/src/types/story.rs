use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Story {}

impl Story {
    pub fn new() -> Self {
        return Story {};
    }
}
