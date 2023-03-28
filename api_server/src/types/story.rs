use crate::types::Coord;
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Story {
    pub id: String,
    pub name: String,
    pub points: i32,
    pub timestamp: u32,
    pub timeslot: u32,
    pub description: String,
    pub sequence: Vec<Coord>,
    pub total_distance: i32,
}

impl Story {
    pub fn new() -> Self {
        return Story {
            id: String::new(),
            name: String::new(),
            points: 0,
            timeslot: 0,
            timestamp: 0,
            description: String::new(),
            sequence: vec![],
            total_distance: 0,
        };
    }
}
