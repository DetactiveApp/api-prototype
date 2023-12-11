import requests
import json

URL = "https://api.detactive.de/v1"
USER = "d13a9dfe-cb14-4c95-9a05-ab93eedf2e03"
STORY = "9e125477-3a9e-4d39-ae63-5a09a50b614a"
START_COORDS = [52.520008, 13.404954]

# Get authentication token
r = requests.get(URL + f"/users/{USER}/token")
token = r.json()["token"]
headers = {
    "Authorization": f"Bearer {token}",
    "Content-Type": "application/json"
}
print(f"Token: {token}")

# Start game
data = json.dumps({
    "lat": START_COORDS[0],
    "lon": START_COORDS[1]
})
r = requests.post(URL + f"/games/{STORY}/start", data=data, headers=headers)
step = r.json()["decisions"][0]["stepOutputUuid"]
print(f"Next step: {step}")

# Play story until end
while True:
    r = requests.post(URL + f"/games/{STORY}/steps/{step}", data=data, headers=headers)
    r_json = r.json()

    if r_json["decisions"]:
        step = r_json["decisions"][0]["stepOutputUuid"]
    else:
        break