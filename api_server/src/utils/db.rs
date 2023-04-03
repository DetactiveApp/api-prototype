use redis::RedisResult;

extern crate redis;
use redis::Commands;
use redis::Connection;

pub fn user_db_conn() -> RedisResult<Connection> {
    let mut client = redis::Client::open("redis://user-db:6379")?;
    let conn_res = client.get_connection();
    if conn_res.is_err() {
        client = redis::Client::open("redis://user:6379")?;
    }
    let conn = client.get_connection()?;
    Ok(conn)
}

pub fn blueprint_db_conn() -> RedisResult<Connection> {
    let mut client = redis::Client::open("redis://blueprint-db:6380")?;
    let conn_res = client.get_connection();
    if conn_res.is_err() {
        client = redis::Client::open("redis://localhost:6380")?;
    }
    let conn = client.get_connection()?;
    Ok(conn)
}

pub fn check_user(id: &String) -> bool {
    let mut conn = user_db_conn().unwrap();
    match conn.exists(id).unwrap() {
        0 => return false,
        _ => return true,
    };
}
