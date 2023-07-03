const EARTH_RADIUS_M: f64 = 6371e3;

pub fn distance_to_latitude(distance_m: f64) -> f64 {
    let latitude_change = distance_m / EARTH_RADIUS_M;
    latitude_change.to_degrees()
}

pub fn distance_to_longitude(distance_m: f64, latitude: f64) -> f64 {
    let longitude_change = distance_m / (EARTH_RADIUS_M * latitude.to_radians().cos());
    longitude_change.to_degrees()
}
