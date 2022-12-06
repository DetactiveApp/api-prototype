pub struct Session {
    connections: i32,
}

impl Session {
    pub fn new() -> Session {
        return Session { connections: 0 };
    }

    pub fn run(&self) {}
}
