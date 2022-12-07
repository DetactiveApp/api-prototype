mod core;

use crate::core::Server;

fn main() {
    println!("Storyhunter Gameserver {}", env!("CARGO_PKG_VERSION"));

    let mut server = Server::new();
    server.run();
}
