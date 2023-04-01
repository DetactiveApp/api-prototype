use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct Position {
    pub x: f32,
    pub y: f32,
}
