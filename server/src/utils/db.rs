use crate::types::User;
use redis::RedisResult;

extern crate redis;
use redis::Commands;
use redis::Connection;

pub fn user_db_conn() -> RedisResult<Connection> {
    let _client = redis::Client::open("redis://127.0.0.1:6379/");
    match _client {
        Ok(client) => return client.get_connection(),
        Err(err) => return Err(err),
    }
}

#[allow(dead_code)]
pub fn mission_db_conn() -> RedisResult<Connection> {
    let _client = redis::Client::open("redis://127.0.0.1:6380/");
    match _client {
        Ok(client) => return client.get_connection(),
        Err(err) => return Err(err),
    }
}

pub fn check_user(id: String) -> bool {
    let mut conn = user_db_conn().unwrap();
    match conn.exists(id).unwrap() {
        0 => return false,
        _ => return true,
    };
}
