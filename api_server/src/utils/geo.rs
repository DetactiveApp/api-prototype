pub async fn get_geo_data(latitude: f64, longitude: f64, radius_meter: i32) -> serde_json::Value {
    let feature_limits = 50;
    // Tilequery Mapbox API
    let url = format!("https://api.mapbox.com/v4/mapbox.mapbox-streets-v8/tilequery/{latitude},{longitude}.json?radius={radius_meter}&limit={feature_limits}&dedupe&access_token=pk.eyJ1IjoibWF4eDE5IiwiYSI6ImNsNXBiMjAzODFsbHUzY3BheTRlb3VsZzIifQ.fdO_y9jgP_obAwt30rQMXQ");

    let response = reqwest::get(url)
        .await
        .unwrap()
        .json::<serde_json::Value>()
        .await
        .unwrap();

    return response;
}
