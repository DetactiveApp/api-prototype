use super::latlon::{distance_to_latitude, distance_to_longitude};
use super::settings::POI_SEARCH_RADIUS_M;
use crate::types::{DCoord, DError};
use rand::{seq::SliceRandom, Rng};
use reqwest::{self, StatusCode};
use std::{collections::HashMap, env};

async fn fetch_features(
    lat: f64,
    lon: f64,
    mapbox_token: &str,
) -> Result<HashMap<String, DCoord>, DError> {
    let mut features: HashMap<String, DCoord> = HashMap::new();

    let radius = f64::clamp(POI_SEARCH_RADIUS_M * 0.5, 1.0, 1000.0);
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
                features.insert(maki.to_string(), coord);
            }
        }
    }

    Ok(features)
}

pub async fn near(
    tag: Option<String>,
    lat: f64,
    lon: f64,
    place_override: Option<bool>,
) -> Result<Option<DCoord>, DError> {
    if tag.is_none() || place_override.is_none() {
        return Ok(None);
    }

    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let features: HashMap<String, DCoord> = fetch_features(lat, lon, mapbox_token).await?;

    let mut rng = rand::thread_rng();
    let fallback_coord = features
        .values()
        .map(|value| value.to_owned())
        .collect::<Vec<DCoord>>()
        .choose(&mut rng)
        .cloned()
        .unwrap_or_else(|| {
            let lat: f64 = lat
                + (distance_to_latitude(POI_SEARCH_RADIUS_M * 0.5)
                    * if rng.gen_bool(0.5) { -1.0 } else { 1.0 });
            let lon: f64 = lon
                + (distance_to_longitude(POI_SEARCH_RADIUS_M * 0.5, lat)
                    * if rng.gen_bool(0.5) { -1.0 } else { 1.0 });
            DCoord { lat, lon }
        });

    Ok(Some(fallback_coord))
}
