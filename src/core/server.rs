use std::net::{TcpListener, TcpStream};
use std::sync::mpsc::channel;
use std::{thread, vec};

use crate::core::Session;

pub struct Server {
    max_sessions: usize,
    max_connections_per_session: usize,
}

impl Server {
    pub fn new() -> Server {
        let mut server = Server {
            max_sessions: 5,
            max_connections_per_session: 10,
        };

        println!("Init server...");
        server.run();

        return server;
    }

    pub fn run(&mut self) {
        loop {
            const PORT: u8 = 80;
            let listener = TcpListener::bind(format!("127.0.0.1:{}", PORT)).unwrap();
            println!("Listens for incoming connections on Port {}...", PORT);

            for stream in listener.incoming() {
                match stream {
                    Ok(stream) => {
                        let session = Session::new();
                        thread::spawn(move || session.run());
                    }

                    Err(error) => {
                        println!("Unable to connect: {}", error);
                    }
                }
            }
        }
    }
}
