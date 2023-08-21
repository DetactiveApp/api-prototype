# API Documentation

Version: 1 <br /> Prefix: /v1

# Routes:

## GET /game/list?lat={}&lon={}

Gets list of potential "games" that are playable around given coordinates.

### Response Example:

```json
[
  {
    "uuid": "4799b75f-50c8-4086-9b65-a12352165ca7",
    "title": "Der Banküberfall",
    "image": "https://avatars.githubusercontent.com/u/124081268",
    "description": "Finde den Täter ...",
    "distance": 2, // in meters
    "duration": 20 // in minutes
  }
]
```

---

## GET /game/{story_uuid}

Gets information about story for given story uuid in the url. [Progress tracker planned]

### Response Example:

```json
  {
    "story": {
      "uuid": "4799b75f-50c8-4086-9b65-a12352165ca7",
      "title": "Der Banküberfall",
      "image": "https://avatars.githubusercontent.com/u/124081268",
      "description": "Finde den Täter ...",
      "distance": 2, // in meters
      "duration": 20 // in minutes
    },
    "progress": {
      ...
    }
  }

```

---

## POST /game/{story_uuid}/start

Registers a new story to play for the user at given story uuid in the url and using the users current position for the body payload.

### Body Example:
```json
{
  "lat": 52.51678368791737,
  "lon": 13.385774895470805
}
```

### Response Example:

```json
{
  "uuid": "7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2",
  "description": "story.museumheist.step.gotomuseum.description",
  "mediaType": null,
  "src": null,
  "title": "story.museumheist.step.gotomuseum.title",
  "decisions": [
    {
      "uuid": "27d8e03d-c025-4e7d-9c31-eb38d5e2adc2",
      "stepInputUuid": "7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2",
      "stepOutputUuid": "7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3",
      "title": "story.museumheist.step.gotomuseum.decision.acceptentercrimescene.title"
    }
  ],
  "waypoint": {
    "uuid": "4fa1b998-bc77-4c8a-bc50-af8288581ffa",
    "coordinates": {
      "lat": 52.511293722902735,
      "lon": 13.393637537956238
    }
  }
}
```

---

## POST /game/forward

Gets next step for the user in the current & active story. Optionally you can use the "to" entry to decide what next step to use, if there are multiple available.

### Body Example:
```json
{
  "lat": 52.51678368791737,
  "lon": 13.385774895470805,
  "to": "27d8e03d-c025-4e7d-9c31-eb38d5e2adc3"
}
```

### Response Example:
```json
{
  "uuid": "7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3",
  "description": "story.museumheist.step.examinecrimescene.description",
  "mediaType": "VIDEO",
  "src": "https://videos.ctfassets.net/tiy4aehfiie3/3WHnU7SCQdr4jRZ781LVAk/0cdd5ea48045b3bc665b3f1488d06429/missing-painting_museum-heist.mp4",
  "title": "story.museumheist.step.examinecrimescene.description",
  "decisions": [
    {
      "uuid": "27d8e03d-c025-4e7d-9c31-eb38d5e2adc3",
      "stepInputUuid": "7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3",
      "stepOutputUuid": "7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4",
      "title": "story.museumheist.step.examinecrimescene.decision.acceptleavecrimescene.title"
    }
  ],
  "waypoint": null
}
```
---

## DELETE /game/delete

Closes the active game. Returns an 202 when successful. 
