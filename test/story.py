import matplotlib.pyplot as plt
import requests
import json


DEV = False
PLOT_ROUTE = True
URL = "http://localhost:3000/v1" if DEV else "https://api.detactive.de/v1"
USER = "a191d39f-c6e1-4314-8c47-4602deec9f7f"
STORY = "9e125477-3a9e-4d39-ae63-5a09a50b614a"
START_COORDS = [40.71266044, -74.05703505]

coordinates = []

def print_step(r_json):
    print(f"Step: {r_json['uuid']}")
    print(f"Title: {r_json['title']}")
    if r_json["waypoint"]:
        coordinates.append([r_json["waypoint"]["coordinates"]["lat"], r_json["waypoint"]["coordinates"]["lon"]])
        print(f"Coords: {r_json['waypoint']['coordinates']['lat']} {r_json['waypoint']['coordinates']['lon']}")
    print("\n")

# Get authentication token
r = requests.get(URL + f"/users/{USER}/token")
token = r.json()["token"]
headers = {
    "Authorization": f"Bearer {token}",
    "Content-Type": "application/json"
}
print(f"Token: {token}\n")

# Start game
data = json.dumps({
    "lat": START_COORDS[0],
    "lon": START_COORDS[1]
})
r = requests.post(URL + f"/games/{STORY}/start", data=data, headers=headers)
step = r.json()["decisions"][0]["stepOutputUuid"]
print_step(r.json())

# Play story until end
while True:
    r = requests.post(URL + f"/games/{STORY}/steps/{step}", data=data, headers=headers)
    r_json = r.json()
    print_step(r_json)

    if r_json["decisions"]:
        step = r_json["decisions"][0]["stepOutputUuid"]
       
    else:
        print("DONE")
        break

# Plot the coordinates on a map if POLOT_ROUTE is True and connect them with a line but mark the single points
if PLOT_ROUTE:
    plt.title("Detactive Story WP-Paths")
    plt.plot([x[1] for x in coordinates], [x[0] for x in coordinates], 'ro')
    plt.plot([x[1] for x in coordinates], [x[0] for x in coordinates], 'b-')
    plt.show()