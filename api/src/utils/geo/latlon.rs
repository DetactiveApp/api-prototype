const EARTH_RADIUS_M: f64 = 6371e3;

pub fn distance_to_latitude(distance_m: f64) -> f64 {
    let latitude_change = distance_m / EARTH_RADIUS_M;
    latitude_change.to_degrees()
}

pub fn distance_to_longitude(distance_m: f64, latitude: f64) -> f64 {
    let longitude_change = distance_m / (EARTH_RADIUS_M * latitude.to_radians().cos());
    longitude_change.to_degrees()
}

// Returns 4 corner points of the given centered coords in a given radius.
pub fn quad(lat: f64, lon: f64, radius_m: f64) -> [[f64; 2]; 4] {
    // Converts radius in meter to latitude and longitude degrees
    let d_lan = distance_to_latitude(radius_m);
    let d_lon = distance_to_longitude(radius_m, lat);

    // Quad Mask out of coordinates around the user position
    [
        [lat + d_lan, lon - d_lon],
        [lat + d_lan, lon + d_lon],
        [lat - d_lan, lon + d_lon],
        [lat - d_lan, lon - d_lon],
    ]
}
