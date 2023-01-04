use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Coord {
    pub latitude: f32,
    pub longitude: f32,
}
