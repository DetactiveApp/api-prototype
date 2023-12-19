pub const EARTH_RADIUS_M: f64 = 6371e3;

pub fn distance_to_latitude(distance_m: f64) -> f64 {
    let latitude_change = distance_m / EARTH_RADIUS_M;
    latitude_change.to_degrees()
}

pub fn distance_to_longitude(distance_m: f64, latitude: f64) -> f64 {
    let longitude_change = distance_m / (EARTH_RADIUS_M * latitude.to_radians().cos());
    longitude_change.to_degrees()
}

pub fn d_angle(origin: [f64; 2], destination: [f64; 2]) -> f64 {
    let o_lon: f64 = origin[0].to_radians();
    let o_lat: f64 = origin[1].to_radians();
    let d_lon: f64 = destination[0].to_radians();
    let d_lat: f64 = destination[1].to_radians();

    let delta_lon = d_lon - o_lon;

    let x = d_lat.cos() * delta_lon.sin();
    let y = o_lat.cos() * d_lat.sin() - o_lat.sin() * d_lat.cos() * delta_lon.cos();

    y.atan2(x).to_degrees()
}

pub fn destination_coordinate(origin: [f64; 2], angle: f64, distance_m: f64) -> [f64; 2] {
    let d_r = distance_m / EARTH_RADIUS_M;
    let o_lon: f64 = origin[0].to_radians();
    let o_lat: f64 = origin[1].to_radians();
    let angle_rad: f64 = angle.to_radians();

    let d_lat = f64::asin(o_lat.sin() * d_r.cos() + o_lat.cos() * d_r.sin() * angle_rad.cos());
    let d_lon = o_lon
        + f64::atan2(
            angle_rad.sin() * d_r.sin() * o_lat.cos(),
            d_r.cos() - o_lat.sin() * d_lat.sin(),
        );

    [d_lon.to_degrees(), d_lat.to_degrees()]
}

/// Returns 4 corner points of the given centered coords in a given radius.
pub fn quad(origin: [f64; 2], radius_m: f64) -> [[f64; 2]; 4] {
    // Converts radius in meter to latitude and longitude degrees
    let d_lat = distance_to_latitude(radius_m + 1000.0);
    let d_lon = distance_to_longitude(radius_m + 1000.0, origin[0]);

    // Quad Mask out of coordinates around the user position
    [
        [origin[0] + d_lat, origin[1] - d_lon],
        [origin[0] + d_lat, origin[1] + d_lon],
        [origin[0] - d_lat, origin[1] + d_lon],
        [origin[0] - d_lat, origin[1] - d_lon],
    ]
}
