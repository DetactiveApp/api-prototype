use super::{destination_coordinate, MAX_POI_SEARCH_RADIUS_M, MIN_POI_SEARCH_RADIUS_M, distance_to_coordinate};
use crate::types::{DCoord, DError};
use rand::seq::SliceRandom;
use reqwest::{self, StatusCode};
use std::{collections::HashMap, env};

async fn fetch_features(
    origin: &DCoord,
    radius: f64,
    mapbox_token: &str,
) -> Result<HashMap<String, DCoord>, DError> {
    let mut features: HashMap<String, DCoord> = HashMap::new();

    let lat = origin.lat;
    let lon = origin.lon;

    let url = format!(
        "https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{lon},{lat}.json?radius={radius}&limit=50&layers=poi_label&access_token={mapbox_token}",
        lat = lat,
        lon = lon,
        mapbox_token = mapbox_token
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

    if let Some(features_array) = response.get("features").and_then(|f| f.as_array()) {
        for feature in features_array {
            let maki = feature
                .get("properties")
                .and_then(|properties| properties.get("maki"))
                .and_then(|maki| maki.as_str())
                .unwrap_or_default();

            let feature_coordinates = feature
                .get("geometry")
                .and_then(|geometry| geometry.get("coordinates"))
                .and_then(|coordinates| coordinates.as_array())
                .map(|coordinates| DCoord {
                    lat: coordinates
                        .get(1)
                        .and_then(|lat| lat.as_f64())
                        .unwrap_or_default(),
                    lon: coordinates
                        .get(0)
                        .and_then(|lon| lon.as_f64())
                        .unwrap_or_default(),
                });

            if let Some(coord) = feature_coordinates {
                if distance_to_coordinate(origin, &coord) > MIN_POI_SEARCH_RADIUS_M {
                    features.insert(maki.to_string(), coord);
                }
            }
        }
    }

    Ok(features)
}

pub async fn near(
    tag: Option<String>,
    origin: &DCoord,
    place_override: Option<bool>,
    angle: f64,
    distance: f64,
) -> Result<Option<DCoord>, DError> {
    if tag.is_none() || place_override.is_none() {
        return Ok(None);
    }

    let new_origin = destination_coordinate(origin, angle, distance);

    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let features: HashMap<String, DCoord> = fetch_features(
        &new_origin,
        0.25 * fastrand::f64() * (MAX_POI_SEARCH_RADIUS_M - MIN_POI_SEARCH_RADIUS_M)
            + MIN_POI_SEARCH_RADIUS_M,
        mapbox_token,
    )
    .await?;

    let mut rng = rand::thread_rng();
    let fallback_coord = features
        .values()
        .map(|value| value.to_owned())
        .collect::<Vec<DCoord>>()
        .choose(&mut rng)
        .cloned()
        .unwrap_or_else(|| new_origin);

    Ok(Some(fallback_coord))
}
