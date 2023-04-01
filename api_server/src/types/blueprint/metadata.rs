use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct Metadata {
    pub id: String,
}

impl Metadata {
    pub fn new(id: String) -> Self {
        return Metadata { id: id };
    }
}
