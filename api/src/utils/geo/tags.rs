use std::env;

use reqwest::StatusCode;

use super::latlon;

// Uses the MapBox Tilequery API to reqeust POI's (or Tags).
pub async fn get_tags(lat: &f64, lon: &f64) -> Result<Vec<String>, StatusCode> {
    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let mut location_tags: Vec<String> = Vec::new();

    // Filters tags out of the requests for each quad coordinates
    for coord in latlon::quad(*lat, *lon, 1000.0).iter() {
        let lon: &f64 = coord.get(1).unwrap();
        let lat: &f64 = coord.get(0).unwrap();

        // MapBox TileQuery API
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
            .map(|array| {
                array
                    .iter()
                    .flat_map(|f| {
                        f.as_object()
                            .and_then(|obj| obj.get("properties"))
                            .and_then(|props| props.get("maki"))
                    })
                    .for_each(|maki| {
                        let maki_str = maki.as_str().unwrap().to_string();
                        if !location_tags.contains(&maki_str) {
                            location_tags.push(maki_str)
                        }
                    })
            })
            .expect("Cannot extract features");
    }

    Ok(location_tags)
}
