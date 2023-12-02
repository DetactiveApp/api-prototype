use std::env;

use reqwest::StatusCode;

use crate::types::DError;

pub async fn url(asset_id: Option<String>) -> Result<Option<String>, DError> {
    let contentful_token: String = env::var("CONTENTFUL_TOKEN")
        .map_err(|_| DError::from("Could not find Contentful Secret.", StatusCode::NOT_FOUND))?;

    if asset_id.is_none() {
        return Ok(None);
    }

    Ok(Some(String::from("https:") + reqwest::get(format!("https://cdn.contentful.com/spaces/tiy4aehfiie3/environments/master/assets/{}?access_token={}", asset_id.unwrap(), contentful_token))
        .await
        .map_err(|_| DError::from("Could not find asset.", StatusCode::NOT_FOUND))?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| DError::from("Could not find asset.", StatusCode::NOT_FOUND))?
        ["fields"]["file"]["url"].as_str().unwrap()))
}
