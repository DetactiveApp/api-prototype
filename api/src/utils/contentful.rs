use std::env;

use crate::types::DError;

pub async fn url(asset_id: Option<String>) -> Result<Option<String>, DError> {
    let contentful_token: String = env::var("CONTENTFUL_TOKEN")
        .map_err(|_| DError::from("Could not find Contentful Secret.", 0))?;

    if asset_id.is_none() {
        return Ok(None);
    }

    Ok(Some(reqwest::get(format!("https://cdn.contentful.com/spaces/tiy4aehfiie3/environments/master/assets/{}?access_token={}", asset_id.unwrap(), contentful_token))
        .await
        .map_err(|_| DError::from("Could not find asset.", 0))?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| DError::from("Could not find asset.", 0))?
        ["fields"]["file"]["url"].to_string()))
}
