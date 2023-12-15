const EARTH_RADIUS_M: f64 = 6371e3;

pub fn distance_to_latitude(distance_m: f64) -> f64 {
    let latitude_change = distance_m / EARTH_RADIUS_M;
    latitude_change.to_degrees()
}

pub fn distance_to_longitude(distance_m: f64, latitude: f64) -> f64 {
    let longitude_change = distance_m / (EARTH_RADIUS_M * latitude.to_radians().cos());
    longitude_change.to_degrees()
}

/// Returns 4 corner points of the given centered coords in a given radius.
pub fn quad(origin: [f64; 2], radius_m: f64) -> [[f64; 2]; 4] {
    // Converts radius in meter to latitude and longitude degrees
    let d_lat = distance_to_latitude(radius_m);
    let d_lon = distance_to_longitude(radius_m, d_lat);

    // Quad Mask out of coordinates around the user position
    [
        [origin[0] + d_lat, origin[1] - d_lon],
        [origin[0] + d_lat, origin[1] + d_lon],
        [origin[0] - d_lat, origin[1] + d_lon],
        [origin[0] - d_lat, origin[1] - d_lon],
    ]
}
