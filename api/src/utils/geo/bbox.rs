use std::f64::consts::PI;

const EARTH_RADIUS: f64 = 6371e3;
const C: f64 = 2.0 * PI * EARTH_RADIUS;

// Returns a BoundingBox from a radius given in meters.
pub fn bbox(center_lat: &f64, center_lon: &f64, radius: &f64) -> [f64; 4] {
    let d_lat: f64 = 360.0 * radius / C;
    let d_lon: f64 = d_lat * f64::cos(1.0 * (center_lat / 180.0));
    [
        center_lat - d_lat,
        center_lon - d_lon,
        center_lat + d_lat,
        center_lon + d_lon,
    ]
}
