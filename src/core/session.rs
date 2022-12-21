use std::net::TcpStream;
use std::thread;

use crate::core::User;

pub struct Session {
    pub connections: Vec<User>,
}

impl Session {
    pub fn new() -> Session {
        let session = Session {
            connections: Vec::new(),
        };
        return session;
    }

    pub fn run(&mut self) {
        let handler = thread::spawn(move || {});
        handler.join().unwrap();
    }

    pub fn connect(&mut self, stream: TcpStream) {
        let user = User::new(stream);
        self.connections.push(user);
    }
}
