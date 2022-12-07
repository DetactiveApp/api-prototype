use std::net::{TcpListener, TcpStream};
use std::{thread, vec};

use crate::core::Session;

pub struct Server {
    max_sessions: usize,
    max_connections_per_session: usize,
    sessions: Vec<Session>,
}

impl Server {
    pub fn new() -> Server {
        println!("Init server...");
        return Server {
            max_sessions: 10,
            max_connections_per_session: 100,
            sessions: vec![Session::new()],
        };
    }

    fn connects_to_session(&mut self, stream: TcpStream) {
        for session in self.sessions.iter_mut() {
            if session.connections.len() < self.max_connections_per_session {
                session.connect(stream);
                return;
            }
        }

        if self.sessions.len() < self.max_sessions {
            self.sessions.push(Session {
                connections: Vec::new(),
            });
        }
    }

    pub fn run(&mut self) {
        loop {
            let listener = TcpListener::bind("127.0.0.1:80").unwrap();
            println!("Listens for incoming connections...");

            for stream in listener.incoming() {
                match stream {
                    Ok(stream) => {
                        self.connects_to_session(stream);
                    }

                    Err(error) => {
                        println!("Unable to connect: {}", error);
                    }
                }
            }
        }
    }
}
