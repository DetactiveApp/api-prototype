pub async fn get_geo_data(latitude: f64, longitude: f64, range: f64) -> serde_json::Value {
    let bbox_p1 = latitude - range;
    let bbox_p2 = longitude - range;
    let bbox_p3 = latitude + range;
    let bbox_p4 = longitude + range;

    let bbox = format!("{bbox_p1}, {bbox_p2}, {bbox_p3}, {bbox_p4}");
    let url = format!("http://overpass.kumi.systems/api/interpreter?data=[out:json];(way[\"building\"]({bbox});way[\"highway\"]({bbox}););out geom;");

    let response = reqwest::get(url)
        .await
        .unwrap()
        .json::<serde_json::Value>()
        .await
        .unwrap();

    return response;
}
