use serde::{Deserialize, Serialize};

use super::Coord;

#[derive(Serialize, Deserialize, Clone, Copy)]
pub struct Location {
    pub coordinates: Coord,
}
