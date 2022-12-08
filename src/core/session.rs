use std::sync::mpsc::{Receiver, Sender};
use std::{net::TcpStream, thread};

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

    pub fn run(&self) {
        println!("new thread");
        loop {}
    }
}
