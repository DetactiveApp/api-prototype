use redis::RedisResult;

extern crate redis;
use redis::Commands;
use redis::Connection;

pub fn user_db_conn() -> RedisResult<Connection> {
    let _client = redis::Client::open("redis://user-db:6379");
    match _client {
        Ok(client) => return client.get_connection(),
        Err(err) => return Err(err),
    }
}

pub fn blueprint_db_conn() -> RedisResult<Connection> {
    let _client = redis::Client::open("redis://blueprint-db:6380");
    match _client {
        Ok(client) => return client.get_connection(),
        Err(err) => return Err(err),
    }
}

pub fn check_user(id: &String) -> bool {
    let mut conn = user_db_conn().unwrap();
    match conn.exists(id).unwrap() {
        0 => return false,
        _ => return true,
    };
}
