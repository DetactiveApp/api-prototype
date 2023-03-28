const ACCESS_TOKEN: &str =
    "pk.eyJ1IjoibWF4eDE5IiwiYSI6ImNsNXBiMjAzODFsbHUzY3BheTRlb3VsZzIifQ.fdO_y9jgP_obAwt30rQMXQ";
const FEATURE_LIMIT: i32 = 50;

pub async fn get_geo_context(
    latitude: f64,
    longitude: f64,
    radius_meter: i32,
) -> serde_json::Value {
    // Tilequery Mapbox API
    let url = format!("https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{longitude},{latitude}.json?limit={FEATURE_LIMIT}&radius={radius_meter}&layers=road,poi-label&access_token={ACCESS_TOKEN}&filter=(walkway|footway)=true");
    let response = reqwest::get(url)
        .await
        .unwrap()
        .json::<serde_json::Value>()
        .await
        .unwrap();

    return response;
}
