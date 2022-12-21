use std::net::TcpStream;

#[derive(Debug)]
pub struct User {
    pub stream: TcpStream,
}

impl User {
    pub fn new(_stream: TcpStream) -> User {
        let session = User { stream: _stream };
        return session;
    }
}
