use chrono::{Duration, Utc};
use jsonwebtoken::{DecodingKey, EncodingKey, Header, Validation};
use log::error;
use reqwest::StatusCode;
use serde::{Deserialize, Serialize};
use std::env;
use uuid::Uuid;

use crate::types::DError;

#[derive(Serialize, Deserialize)]
pub struct Claims {
    pub sub: Uuid,
    exp: usize,
    iat: usize,
}

pub fn encode(user_uuid: Uuid, duration: Duration) -> Result<String, DError> {
    let datetime_iat = Utc::now();
    let datetime_exp = datetime_iat + duration;

    let timestamp_iat = datetime_iat.timestamp() as usize;
    let timestamp_exp = datetime_exp.timestamp() as usize;

    let claim = Claims {
        sub: user_uuid,
        exp: timestamp_exp,
        iat: timestamp_iat,
    };
    let secret = &env::var("JWT_SECRET").unwrap();

    return jsonwebtoken::encode(
        &Header::default(),
        &claim,
        &EncodingKey::from_secret(secret.as_bytes()),
    )
    .map_err(|_| DError::from("Unauthorized.", StatusCode::UNAUTHORIZED));
}

pub fn verify(token: &str) -> Result<Claims, DError> {
    let secret = &env::var("JWT_SECRET").unwrap();
    let key = DecodingKey::from_secret(secret.as_bytes());

    let result = jsonwebtoken::decode::<Claims>(
        token,
        &key,
        &Validation::new(jsonwebtoken::Algorithm::HS256),
    );

    match result {
        Ok(decoded) => Ok(decoded.claims),
        Err(err) => {
            let sub = decode_token_sub(token, &key).unwrap_or("N/A".to_string());
            error!("Error for user {}: {:?}", sub, err);

            match err.kind() {
                jsonwebtoken::errors::ErrorKind::ExpiredSignature => {
                    Err(DError::from("Token expired.", StatusCode::UNAUTHORIZED))
                }
                _ => Err(DError::from("Unauthorized.", StatusCode::UNAUTHORIZED)),
            }
        }
    }
}

fn decode_token_sub(token: &str, key: &DecodingKey) -> Result<String, jsonwebtoken::errors::Error> {
    jsonwebtoken::decode::<Claims>(token, key, &Validation::new(jsonwebtoken::Algorithm::HS256))
        .map(|token_data| token_data.claims.sub.to_string())
}
