use crate::types::{DCoord, DError};
use rand::seq::SliceRandom;
use reqwest::{self, StatusCode};
use std::env::{self};

use super::MAX_MINUTES_TO_WAYPOINT;

pub async fn near(origin: &DCoord, _angle: f64) -> Result<Option<DCoord>, DError> {
    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let url = format!(
        "https://api.mapbox.com/isochrone/v1/{profile}/{lon},{lat}?contours_minutes={minutes}&access_token={access_token}",
        profile = "mapbox/walking",
        lon = origin.lon,
        lat = origin.lat,
        access_token = mapbox_token,
        minutes = MAX_MINUTES_TO_WAYPOINT,
    );

    println!("{:?}", url);

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
    println!("{:?}", response);

    let coordinates: Vec<DCoord> = response
        .get("features")
        .and_then(|value| value.as_array().unwrap().choose(&mut rng))
        .and_then(|value| value.get("geometry"))
        .and_then(|value| value.get("coordinates"))
        .and_then(|value| value.as_array())
        .unwrap()
        .iter()
        .map(|c| DCoord {
            lat: c.get(1).unwrap().as_f64().unwrap(),
            lon: c.get(0).unwrap().as_f64().unwrap(),
        })
        .collect();

    Ok(coordinates.choose(&mut rng).cloned())
}
