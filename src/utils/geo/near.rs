use crate::{
    types::{DCoord, DError, RouteMode},
    utils::geo::{d_angle, MAX_ANGLE_TO_WAYPOINT},
};
use rand::seq::SliceRandom;
use reqwest::{self, StatusCode};
use std::env::{self};

pub async fn near(
    origin: &DCoord,
    angle: f64,
    route_mode: RouteMode,
) -> Result<Option<DCoord>, DError> {
    let mapbox_token = &env::var("MAPBOX_TOKEN").expect("Mapbox access token not found.");
    let url = format!(
        "https://api.mapbox.com/isochrone/v1/{profile}/{lon},{lat}?contours_minutes=6%2C7%2C8%2C9&denoise=1&generalize=0&access_token={access_token}",
        profile = "mapbox/walking",
        lon = origin.lon,
        lat = origin.lat,
        access_token = mapbox_token
    );

    let response = reqwest::get(&url)
        .await
        .map_err(|_| {
            DError::from(
                "Could not contact Mapbox.",
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?
        .json::<serde_json::Value>()
        .await
        .map_err(|_| {
            DError::from(
                "Could not contact Mapbox.",
                StatusCode::INTERNAL_SERVER_ERROR,
            )
        })?;

    let mut rng = rand::thread_rng();

    let mut coordinates: Vec<DCoord> = response
        .get("features")
        .and_then(|value| value.as_array())
        .unwrap()
        .iter()
        .flat_map(|value| {
            value
                .get("geometry")
                .and_then(|value| value.get("coordinates"))
                .and_then(|value| value.as_array())
                .unwrap()
                .iter()
                .map(|c| DCoord {
                    lat: c.get(1).unwrap().as_f64().unwrap(),
                    lon: c.get(0).unwrap().as_f64().unwrap(),
                })
        })
        .collect();

    let mut backup_coordinate: Option<DCoord> = coordinates.choose(&mut rng).cloned();

    match route_mode {
        RouteMode::Track => {
            coordinates = coordinates
                .iter()
                .filter(|destination| {
                    let dest_angle = d_angle(origin, destination);
                    let angle_diff = (angle - dest_angle + 360.0) % 360.0;
                    if angle_diff < MAX_ANGLE_TO_WAYPOINT {
                        true
                    } else {
                        if let Some(backup) = &backup_coordinate {
                            let backup_angle_diff =
                                (angle - d_angle(origin, &backup) + 360.0) % 360.0;
                            if angle_diff < backup_angle_diff {
                                backup_coordinate = Some(*destination).cloned();
                            }
                        }
                        false
                    }
                })
                .cloned()
                .collect()
        }
        _ => {
            return Err(DError::from(
                "Not Implemented.",
                StatusCode::NOT_IMPLEMENTED,
            ))
        }
    }

    if coordinates.is_empty() {
        return Ok(backup_coordinate);
    }

    Ok(coordinates.choose(&mut rng).cloned())
}
