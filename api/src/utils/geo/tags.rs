use std::env;

use reqwest::StatusCode;

pub async fn get_local_location_tags(lat: &f64, lon: &f64) -> Result<Vec<String>, StatusCode> {
    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let url = format!("https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{lon},{lat}.json?limit=50&radius=1000&dedupe&geometry=point&layers=poi_label&access_token={mapbox_token}&filter=(walkway|footway)=true");

    let mut location_tags: Vec<String> = Vec::new();

    let ctx = reqwest::get(url)
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| StatusCode::INTERNAL_SERVER_ERROR)?;

    ctx.get("features")
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

    Ok(location_tags)
}

// other layers: "road"