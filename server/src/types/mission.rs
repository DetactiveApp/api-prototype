use crate::types::Coord;
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Mission {
    id: String,
    name: String,
    points: i32,
    timestamp: u32,
    timeslot: u32,
    description: String,
    sequence: Vec<Coord>,
}

impl Mission {
    pub fn new() -> Self {
        return Mission {
            id: String::new(),
            name: String::new(),
            points: 0,
            timeslot: 0,
            timestamp: 0,
            description: String::new(),
            sequence: vec![],
        };
    }
}
