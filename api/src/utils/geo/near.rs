use std::{collections::HashMap, env};

use rand::seq::SliceRandom;

use crate::types::{DCoord, DError};

use super::latlon;

const SEARCH_RADIUS_M: f64 = 500.0;

// This fuction returns only one poi or random point for the given inputs
pub async fn near(
    tag: Option<String>,
    lat: f64,
    lon: f64,
    place_override: Option<bool>,
) -> Result<Option<DCoord>, DError> {
    if tag.is_none() || place_override.is_none() {
        return Ok(None);
    }
    let tag = tag.unwrap();

    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");

    if tag != "random" {
        // Filters tags out of the requests for each quad coordinates
        let mut features: HashMap<String, DCoord> = HashMap::new();
        for coord in latlon::quad(lat, lon, SEARCH_RADIUS_M).iter() {
            let lon: &f64 = coord.get(1).unwrap();
            let lat: &f64 = coord.get(0).unwrap();

            let url = format!(
                "https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{lon},{lat}.json?radius=1000&limit=50&layers=poi_label&access_token={mapbox_token}"
        );

            let response = reqwest::get(&url)
                .await
                .map_err(|_| DError::from("Could not contact Mapbox.", 0))?
                .json::<serde_json::Value>()
                .await
                .map_err(|_| DError::from("Could not contact Mapbox.", 0))?;

            response
                .get("features")
                .and_then(|_features| _features.as_array())
                .unwrap()
                .iter()
                .for_each(|feature| {
                    let maki = feature
                        .get("properties")
                        .and_then(|properties| properties.get("maki"))
                        .and_then(|maki| maki.as_str())
                        .unwrap();

                    let coordinates = feature
                        .get("geometry")
                        .and_then(|geometry| geometry.get("coordinates"))
                        .and_then(|coordinates| coordinates.as_array())
                        .and_then(|coordinates| {
                            Some(DCoord {
                                lat: coordinates.get(1).and_then(|lat| lat.as_f64()).unwrap(),
                                lon: coordinates.get(0).and_then(|lon| lon.as_f64()).unwrap(),
                            })
                        });

                    features.insert(maki.to_string(), coordinates.unwrap());
                });
        }

        if features.contains_key(&tag) {
            return Ok(Some(features.get(&tag).unwrap().clone()));
        }
    }

    let mut coordinates: Vec<DCoord> = vec![];
    for coord in latlon::quad(lat, lon, SEARCH_RADIUS_M).iter() {
        let lon: &f64 = coord.get(1).unwrap();
        let lat: &f64 = coord.get(0).unwrap();

        let url = format!(
                    "https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{lon},{lat}.json?radius=1000&limit=50&layers=road&access_token={mapbox_token}"
            );

        let response = reqwest::get(&url)
            .await
            .map_err(|_| DError::from("Could not contact Mapbox.", 0))?
            .json::<serde_json::Value>()
            .await
            .map_err(|_| DError::from("Could not contact Mapbox.", 0))?;

        response
            .get("features")
            .and_then(|_features| _features.as_array())
            .unwrap()
            .iter()
            .for_each(|feature| {
                let feature_coordinates = feature
                    .get("geometry")
                    .and_then(|geometry| geometry.get("coordinates"))
                    .and_then(|coordinates| coordinates.as_array())
                    .and_then(|coordinates| {
                        Some(DCoord {
                            lat: coordinates.get(1).and_then(|lat| lat.as_f64()).unwrap(),
                            lon: coordinates.get(0).and_then(|lon| lon.as_f64()).unwrap(),
                        })
                    });
                coordinates.push(feature_coordinates.unwrap());
            });
    }
    Ok(Some(
        coordinates.choose(&mut rand::thread_rng()).unwrap().clone(),
    ))
}
