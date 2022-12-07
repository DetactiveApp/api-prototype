use std::{net::TcpStream, thread};

use crate::core::User;

pub struct Session {
    pub connections: Vec<User>,
}

impl Session {
    pub fn new() -> Session {
        let session: Session = Session {
            connections: Vec::new(),
        };
        session.event_loop();
        return session;
    }

    pub fn connect(&mut self, stream: TcpStream) {
        self.connections.push(User::new(stream));
    }

    fn event_loop(&self) {
        loop {}
    }

    fn check_connections(&self) {}
}
