use super::position::Position;
use serde::{Deserialize, Serialize};
use serde_json::Value;

#[warn(non_snake_case)]
#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct BlueprintNode {
    pub id: String,
    pub r#type: String,
    pub position: Position,
    pub positionAbsolute: Position,
    pub data: Value,
    pub width: i32,
    pub height: i32,
    pub selected: bool,
    pub dragging: bool,
}
