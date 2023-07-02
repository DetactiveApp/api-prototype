use std::env;

use reqwest::StatusCode;

use super::bbox;

pub async fn get_local_location_tags(
    lat: &f64,
    lon: &f64,
    radius: f64,
) -> Result<Vec<String>, StatusCode> {
    let mut location_tags: Vec<String> = Vec::new();

    // Calculate BoundingBox with a radius from the users position for the MapBox API request
    let bbox: [f64; 4] = bbox(lat, lon, &radius);

    // MapBox Geocoding API (lon, lat)
    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let url = format!(
        "https://api.mapbox.com/geocoding/v5/mapbox.places/{lon},{lat}.json?access_token={mapbox_token}&limit=10&type=poi"
    );

    // Request
    let response = reqwest::get(url)
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    println!("{}", response);

    // NEXT STEP: wait for mapbox support to get the right api

    Ok(location_tags)

    // MapBox Geocoding Docs: https://docs.mapbox.com/api/search/geocoding/
    // Returning POI's: https://docs.mapbox.com/api/search/geocoding/#point-of-interest-category-coverage
}
