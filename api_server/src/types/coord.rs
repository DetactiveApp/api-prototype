use std::f64::consts::PI;

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Clone, Copy)]
pub struct Coord {
    pub latitude: f64,
    pub longitude: f64,
}

impl Coord {
    /// .
    /// Returns the distance to the target coordinate in meters.
    pub fn distance(&self, target: Coord) -> f64 {
        // haversine formula
        let r = 6371e3;
        let phi1 = self.latitude * (180.0 / PI);
        let phi2 = target.latitude * (180.0 / PI);
        let delta_lat = (target.latitude - self.latitude) * (180.0 / PI);
        let delta_lon = (target.longitude - self.longitude) * (180.0 / PI);

        let a: f64 = (delta_lat / 2.0).sin() * (delta_lon / 2.0).sin()
            + phi1.cos() * phi2.cos() * (delta_lon / 2.0).sin() * (delta_lon / 2.0).sin();
        let c = a.sqrt().atan2((1.0 - a).sqrt());

        return (r * c).round();
    }

    /// .
    /// Returns the angle to the target coordinate in degrees.
    pub fn angle(&self, target: Coord) -> f64 {
        return 360.0
            - (((target.latitude - self.latitude) / (target.longitude - self.longitude)).atan()
                * (180.0 / PI)
                + 360.0)
                % 360.0;
    }
}
