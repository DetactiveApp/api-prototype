use std::{collections::HashMap, env};

use reqwest::StatusCode;

use crate::types::DCoord;

use super::latlon;

pub async fn near(tag: String, lat: f64, lon: f64) -> Result<DCoord, StatusCode> {
    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let mut pois: HashMap<String, DCoord> = HashMap::new();

    // Filters tags out of the requests for each quad coordinates
    for coord in latlon::quad(lat, lon, 1000.0).iter() {
        let lon: &f64 = coord.get(1).unwrap();
        let lat: &f64 = coord.get(0).unwrap();

        let url = format!(
                "https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{lon},{lat}.json?radius=1000&limit=50&layers=poi_label&access_token={mapbox_token}"
        );

        let response = reqwest::get(&url)
            .await
            .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
            .json::<serde_json::Value>()
            .await
            .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

        response
            .get("features")
            .and_then(|features| features.as_array())
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

                pois.insert(maki.to_string(), coordinates.unwrap());
            });
    }

    Ok(pois.get(&tag).unwrap().clone())
}
