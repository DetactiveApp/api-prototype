mod core;

use crate::core::Server;

fn main() {
    println!("STORYHUNTER GAMESERVER {}", env!("CARGO_PKG_VERSION"));

    let server = Server::new();
    server.run();
}
