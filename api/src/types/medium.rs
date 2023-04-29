use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub enum Medium {
    AUDIO,
    IMAGE,
    VIDEO,
}
