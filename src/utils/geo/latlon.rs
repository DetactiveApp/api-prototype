pub const EARTH_RADIUS_M: f64 = 6371e3;

pub fn distance_to_latitude(distance_m: f64) -> f64 {
    let latitude_change = distance_m / EARTH_RADIUS_M;
    latitude_change.to_degrees()
}

pub fn distance_to_longitude(distance_m: f64, latitude: f64) -> f64 {
    let longitude_change = distance_m / (EARTH_RADIUS_M * latitude.to_radians().cos());
    longitude_change.to_degrees()
}

<<<<<<< HEAD
<<<<<<< Updated upstream
// Returns 4 corner points of the given centered coords in a given radius.
pub fn quad(lat: f64, lon: f64, radius_m: f64) -> [[f64; 2]; 4] {
=======
pub fn angle_between_coords(origin: [f64; 2], destination: [f64; 2]) -> f64 {
    let d_lat = destination[0].to_radians() - origin[0].to_radians();
    let d_lon = destination[1].to_radians() - origin[1].to_radians();

    let a = (d_lat / 2.0).sin().powi(2)
        + origin[0].to_radians().cos()
            * destination[0].to_radians().cos()
            * (d_lon / 2.0).sin().powi(2);

    2.0 * a.sqrt().atan2((1.0 - a).sqrt())
}

pub fn destination_from_angle(origin: [f64; 2], angle: f64, distance_m: f64) -> [f64; 2] {
    let d_lat = distance_to_latitude(distance_m);
    let d_lon = distance_to_longitude(distance_m, origin[0]);

    let lat = origin[0].to_radians().sin() * angle.cos()
        + origin[0].to_radians().cos() * angle.sin() * d_lat.to_radians().cos();
    let lon = origin[1].to_radians()
        + angle.sin()
            * d_lon.to_radians()
            * origin[0]
                .to_radians()
                .tan()
                .atan2(angle.cos() - origin[0].to_radians().sin() * lat);

    [lat.to_degrees(), lon.to_degrees()]
}

/// Returns 4 corner points of the given centered coords in a given radius.
pub fn quad(origin: [f64; 2], radius_m: f64) -> [[f64; 2]; 4] {
>>>>>>> Stashed changes
=======
/// Returns 4 corner points of the given centered coords in a given radius.
pub fn quad(origin: [f64; 2], radius_m: f64) -> [[f64; 2]; 4] {
>>>>>>> 7d55988e0b2c10cd04b0a5ffbbb6a7036ec17b5d
    // Converts radius in meter to latitude and longitude degrees
    let d_lat = distance_to_latitude(radius_m + 1000.0);
    let d_lon = distance_to_longitude(radius_m + 1000.0, d_lat);

    // Quad Mask out of coordinates around the user position
    [
        [origin[0] + d_lat, origin[1] - d_lon],
        [origin[0] + d_lat, origin[1] + d_lon],
        [origin[0] - d_lat, origin[1] + d_lon],
        [origin[0] - d_lat, origin[1] - d_lon],
    ]
}
