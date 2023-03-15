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

    pub fn get_user(user_id: String, conn: &mut Connection) -> User {
        let mut user = User::new(user_id, String::new());
        user.name = conn.hget(&user.id, "name").unwrap();
        user.points = conn.hget(&user.id, "points").unwrap();
        user.location.latitude = conn.hget(&user.id, "location.latitude").unwrap();
        user.location.longitude = conn.hget(&user.id, "location.longitude").unwrap();

        user
    }
}
