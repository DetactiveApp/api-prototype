use std::net::TcpStream;

#[derive(Debug)]
pub struct User {
    pub stream: TcpStream,
}

impl User {
    pub fn new(stream: TcpStream) -> User {
        return User { stream: stream };
    }
}
