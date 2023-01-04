use redis::{Commands, Connection};
use serde::{Deserialize, Serialize};

use crate::types::Coord;

#[derive(Serialize, Deserialize)]
pub struct User {
    pub id: String,
    pub name: String,
    pub points: i32,
    pub location: Coord,
}

impl User {
    pub fn new(id: String, name: String) -> Self {
        return User {
            id: id,
            name: name,
            points: 0,
            location: Coord {
                latitude: 0.0,
                longitude: 0.0,
            },
        };
    }

    pub fn to_db(&self, conn: &mut Connection) {
        () = conn.hset(&self.id, "name", &self.name).unwrap();
        () = conn.hset(&self.id, "points", &self.points).unwrap();
        () = conn
            .hset(&self.id, "location.latitude", &self.location.latitude)
            .unwrap();
        () = conn
            .hset(&self.id, "location.longitude", &self.location.longitude)
            .unwrap();
    }

    pub fn from_db(&mut self, conn: &mut Connection) {
        self.name = conn.hget(&self.id, "name").unwrap();
        self.points = conn.hget(&self.id, "points").unwrap();
        self.location.latitude = conn.hget(&self.id, "location.latitude").unwrap();
        self.location.longitude = conn.hget(&self.id, "location.longitude").unwrap();
    }
}
