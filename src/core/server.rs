use crate::core::Session;
use std::net::{TcpListener, TcpStream};

const PORT: u8 = 80;
const MAX_SESSIONS: usize = 10;
const MAX_CONNECTIONS_PER_SESSION: usize = 10;

pub struct Server {
    sessions: Vec<Session>,
}

impl Server {
    pub fn new() -> Server {
        let mut server = Server {
            sessions: Vec::with_capacity(MAX_SESSIONS),
        };

        let mut first_session = Session::new();
        first_session.run();
        server.sessions.push(first_session);

        return server;
    }

    pub fn run(&mut self) {
        loop {
            let listener = TcpListener::bind(format!("127.0.0.1:{}", PORT)).unwrap();
            println!("Listens for incoming connections on Port {}...", PORT);

            for stream in listener.incoming() {
                match stream {
                    Ok(stream) => match self.connect_to_any_session(stream) {
                        _ => (),
                    },

                    Err(error) => {
                        println!("Unable to connect: {}", error);
                    }
                }
            }
        }
    }

    fn connect_to_any_session(&mut self, stream: TcpStream) -> Result<(), i8> {
        for session in self.sessions.iter_mut() {
            match session.connections.len() {
                0..=MAX_CONNECTIONS_PER_SESSION => {
                    session.connect(stream);
                    return Ok(());
                }
                _ => (),
            }
        }

        if self.sessions.len() < MAX_SESSIONS {
            let mut session = Session::new();
            session.connect(stream);
            self.sessions.push(session);
        }

        return Err(-1);
    }
}
