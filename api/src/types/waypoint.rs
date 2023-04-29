use serde::{Deserialize, Serialize};
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct WayPoint {
    pub uuid: Option<Uuid>,
    pub max_distance: usize,
    pub min_distance: usize,
    pub place_type: Option<String>,
}

impl WayPoint {
    pub fn new() -> Self {
        return WayPoint {
            uuid: None,
            max_distance: 0,
            min_distance: 0,
            place_type: None,
        };
    }
}
