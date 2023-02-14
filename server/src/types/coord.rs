use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Clone, Copy)]
pub struct Coord {
    pub latitude: f64,
    pub longitude: f64,
}
