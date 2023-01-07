use crate::types::Coord;
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub struct Mission {
    pub id: String,
    pub name: String,
    pub points: i32,
    pub timestamp: u32,
    pub timeslot: u32,
    pub description: String,
    pub sequence: Vec<Coord>,
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
