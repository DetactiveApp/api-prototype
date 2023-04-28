use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Clone, Copy)]
pub enum MediaType {
    TEXT,
    IMAGE,
    VIDEO,
}

#[derive(Serialize, Deserialize, Clone)]
pub struct Media {
    pub r#type: MediaType,
    pub data: String,
}
