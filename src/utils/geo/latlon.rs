use crate::types::DCoord;

pub const EARTH_RADIUS_M: f64 = 6371e3;

#[allow(dead_code)]
pub fn distance_to_latitude(distance_m: f64) -> f64 {
    let latitude_change = distance_m / EARTH_RADIUS_M;
    latitude_change.to_degrees()
}

#[allow(dead_code)]
pub fn distance_to_longitude(distance_m: f64, latitude: f64) -> f64 {
    let longitude_change = distance_m / (EARTH_RADIUS_M * latitude.to_radians().cos());
    longitude_change.to_degrees()
}

pub fn d_angle(origin: &DCoord, destination: &DCoord) -> f64 {
    let o_lon: f64 = origin.lon.to_radians();
    let o_lat: f64 = origin.lat.to_radians();
    let d_lon: f64 = destination.lon.to_radians();
    let d_lat: f64 = destination.lat.to_radians();

    let delta_lon = d_lon - o_lon;

    let x = d_lat.cos() * delta_lon.sin();
    let y = o_lat.cos() * d_lat.sin() - o_lat.sin() * d_lat.cos() * delta_lon.cos();

    y.atan2(x).to_degrees()
}

#[allow(dead_code)]
pub fn destination_coordinate(origin: &DCoord, angle: f64, distance_m: f64) -> DCoord {
    let d_r = distance_m / EARTH_RADIUS_M;
    let o_lat: f64 = origin.lat.to_radians();
    let o_lon: f64 = origin.lon.to_radians();
    let angle_rad: f64 = angle.to_radians();

    let d_lat = f64::asin(o_lat.sin() * d_r.cos() + o_lat.cos() * d_r.sin() * angle_rad.cos());
    let d_lon = o_lon
        + f64::atan2(
            angle_rad.sin() * d_r.sin() * o_lat.cos(),
            d_r.cos() - o_lat.sin() * d_lat.sin(),
        );

    DCoord {
        lat: d_lat.to_degrees(),
        lon: d_lon.to_degrees(),
    }
}

/// Returns 4 corner points of the given centered coords in a given radius.
#[allow(dead_code)]
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

// Haversine Formula
/// Returns the distance in meters
#[allow(dead_code)]
pub fn distance_to_coordinate(origin: &DCoord, destination: &DCoord) -> f64 {
    let lat1 = origin.lat.to_radians();
    let lat2 = destination.lat.to_radians();
    let d_lat = lat2 - lat1;
    let d_lon = (destination.lon - origin.lon).to_radians();

    let a = (d_lat * 0.5).sin().powf(2.0) + lat1.cos() * lat2.cos() * (d_lon * 0.5).sin().powf(2.0);

    let c = 2.0 * a.sqrt().atan2((1.0 - a).sqrt());

    EARTH_RADIUS_M * c
}
