use serde::{Deserialize, Serialize};

use super::{Coord, Media};

#[derive(Serialize, Deserialize, Clone)]
pub struct Location {
    pub id: u32,
    pub coordinate: Coord,
    pub decision: Option<Vec<u32>>,
    pub media: Media,
}
