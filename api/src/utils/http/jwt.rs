use chrono::{Duration, Utc};
use jsonwebtoken::{DecodingKey, EncodingKey, Header, Validation};
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use std::env;

#[derive(Serialize, Deserialize)]
pub struct Claims {
    exp: usize,
    iat: usize,
}

#[allow(dead_code)]
pub fn encode() -> Result<String, StatusCode> {
    let datetime_iat = Utc::now();
    let datetime_exp = datetime_iat + Duration::seconds(30);

    let timestamp_iat = datetime_iat.timestamp() as usize;
    let timestamp_exp = datetime_exp.timestamp() as usize;

    let claim = Claims {
        exp: timestamp_exp,
        iat: timestamp_iat,
    };
    let secret = &env::var("JWT_SECRET").unwrap();

    return jsonwebtoken::encode(
        &Header::default(),
        &claim,
        &EncodingKey::from_secret(secret.as_bytes()),
    )
    .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR);
}

pub fn verify(token: &str) -> Result<(), StatusCode> {
    let secret = &env::var("JWT_SECRET").unwrap();
    let key = DecodingKey::from_secret(secret.as_bytes());

    jsonwebtoken::decode::<Claims>(token, &key, &Validation::default()).map_err(|err| match err
        .kind()
    {
        jsonwebtoken::errors::ErrorKind::ExpiredSignature => StatusCode::UNAUTHORIZED,
        _ => StatusCode::INTERNAL_SERVER_ERROR,
    })?;
    Ok(())
}
