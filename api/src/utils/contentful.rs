use std::env;

use crate::types::DError;

pub async fn url(asset_id: String) -> Result<String, DError> {
    let contentful_token: String = env::var("CONTENTFUL_TOKEN")
        .map_err(|_| DError::from("Could not find Contentful Secret.", 0))?;

    Ok(reqwest::get(format!("https://cdn.contentful.com/spaces/tiy4aehfiie3/environments/master/assets/{}?access_token={}", asset_id, contentful_token))
        .await
        .map_err(|_| DError::from("Could not find asset.", 0))?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| DError::from("Could not find asset.", 0))?
        ["fields"]["file"]["url"].to_string())
}
