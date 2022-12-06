use crate::core::Session;
use std::vec;

pub struct Server {
    sessions: Vec<Session>,
}

impl Server {
    pub fn new() -> Server {
        println!("Init server...");
        return Server {
            sessions: vec![Session::new()],
        };
    }

    pub fn run(&self) {
        loop {
            for session in self.sessions.iter() {
                session.run();
            }
        }
    }
}
