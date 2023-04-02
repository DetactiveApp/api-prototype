use redis::{self, Commands, Connection};
use serde::{Deserialize, Serialize};

use serde_json::{self, Value};
use uuid::Uuid;

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct Blueprint {
    pub metadata: Value,
    pub nodes: Value,
    pub edges: Value,
}

impl Blueprint {
    pub fn to_db(&mut self, conn: &mut Connection) {
        let id = Uuid::new_v4().to_string();
        self.metadata = serde_json::json!({ "id": &id, "tags": &self.metadata.get("tags") });

        let blueprint_json = serde_json::to_string(self).unwrap();
        () = conn.set(&id, blueprint_json).unwrap();
    }

    pub fn get_blueprint(blueprint_id: &String, conn: &mut Connection) -> Blueprint {
        let blueprint_json: String = conn.get(blueprint_id).unwrap();
        let blueprint = serde_json::from_str::<Blueprint>(&blueprint_json).unwrap();

        return blueprint;
    }
}
