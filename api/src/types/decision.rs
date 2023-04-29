use serde::{Deserialize, Serialize};
use uuid::Uuid;

#[derive(Serialize, Deserialize)]
pub struct Decision {
    pub uuid: Option<Uuid>,
    pub step_input_uuid: Uuid,
    pub step_output_uuid: Uuid,
    pub place_type: String,
}

impl Decision {
    pub fn new() -> Self {
        return Decision {
            uuid: None,
            step_input_uuid: Uuid::new_v4(),
            step_output_uuid: Uuid::new_v4(),
            place_type: String::new(),
        };
    }
}
