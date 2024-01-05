use super::destination_coordinate;
use crate::types::{DCoord, DError};
use rand::seq::SliceRandom;
use reqwest::{self, StatusCode};
use std::env::{self};

pub async fn near(origin: &DCoord, angle: f64, distance: f64) -> Result<Option<DCoord>, DError> {
    let destination = destination_coordinate(origin, angle, distance);

    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let url = format!(
        "https://api.mapbox.com/matching/v5/{profile}/{orign_lon},{origin_lat};{destination_lon},{destination_lat}?access_token={access_token}",
        profile = "walking",
        orign_lon = origin.lon,
        origin_lat = origin.lat,
        destination_lon = destination.lon,
        destination_lat = destination.lat,
        access_token = mapbox_token
    );

    let response = reqwest::get(&url)
        .await
        .map_err(|_| {
            DError::from(
                "Could not contact Mapbox.",
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| {
            DError::from(
                "Could not contact Mapbox.",
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?;

    let mut rng = rand::thread_rng();

    let coordinates = response
        .get("matchings")
        .and_then(|value| value.as_array().unwrap().choose(&mut rng))
        .and_then(|value| value.get("geometry"))
        .and_then(|value| value.as_array().unwrap().choose(&mut rng))
        .map(|value| DCoord {
            lat: value.get(1).unwrap().as_f64().unwrap(),
            lon: value.get(0).unwrap().as_f64().unwrap(),
        });

    Ok(coordinates)
}
