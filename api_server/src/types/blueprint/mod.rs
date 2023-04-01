use redis::{Commands, Connection, Value};
use serde::{Deserialize, Serialize};

mod edge;
mod metadata;
mod node;
mod position;

use edge::BlueprintEdge;
use metadata::Metadata;
use node::BlueprintNode;

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct Blueprint {
    pub metadata: Option<Metadata>,
    pub nodes: Vec<BlueprintNode>,
    pub edges: Vec<BlueprintEdge>,
}

impl Blueprint {
    pub fn new(id: &str) -> Self {
        return Blueprint {
            metadata: Some(Metadata::new(String::from(id))),
            nodes: vec![],
            edges: vec![],
        };
    }

    pub fn to_db(&self, conn: &mut Connection) {
        if self.metadata.is_none() {
            panic!("Can't store Blueprint without metadata.")
        }

        let id = self.metadata.clone().unwrap().id;

        for node in self.nodes.iter() {
            () = conn
                .hset(&id, format!("node.{}.id", &node.id), &node.id)
                .unwrap();
            () = conn
                .hset(&id, format!("node.{}.type", &node.id), &node.r#type)
                .unwrap();
            () = conn
                .hset(
                    &id,
                    format!("node.{}.position.x", &node.id),
                    &node.position.x,
                )
                .unwrap();
            () = conn
                .hset(
                    &id,
                    format!("node.{}.position.y", &node.id),
                    &node.position.y,
                )
                .unwrap();
            () = conn
                .hset(&id, format!("node.{}.width", &node.id), &node.width)
                .unwrap();
            () = conn
                .hset(&id, format!("node.{}.height", &node.id), &node.height)
                .unwrap();
        }

        for edge in self.nodes.iter() {}
    }

    pub fn get_blueprint(blueprint_id: &String, conn: &mut Connection) -> Blueprint {
        let mut blueprint = Blueprint::new(&blueprint_id);

        for node in conn.hgetall::<&String, Value>(blueprint_id) {
            println!("{:?}", node);
        }

        return blueprint;
    }
}
