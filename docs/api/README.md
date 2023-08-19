# API Documentation

Version: 1 <br /> Prefix: /api/v1

# Routes:

## GET /story/list?lat={}&lon={}

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

## GET /story/{story_uuid}

Gets information about story for given story uuid in the url. [Progress pointer planned]

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

## POST /story/{story_uuid}/start

Registers a new story to play for the user at given story uuid in the url and using the users current position for the body payload.

### Body:
```json
{
  "lat": 0.0,
  "lon": 0.0
}
```

### Response Example:

```json
{
  
}
```

---

## POST /story/forward

Gets next step for the user in the current & active story.

### Response Example:

```json
{
  "uuid": "c64032c5-76d6-49e0-b5c7-d0709ac83c0b",
  "description": "Die fremde Person will was von Dir ...",
  "media_type": "AUDIO",
  "src": "https://cdn.detactive.de/audio.mp3",
  "title": "Was tust du?",
  "decisions": [
    {
      "uuid": "f2b27748-4493-42f1-b007-544b11e750b2",
      "step_input_uuid": "c64032c5-76d6-49e0-b5c7-d0709ac83c0b",
      "step_output_uuid": "baabf3d0-ec17-45b3-8540-8ed53e809aa5",
      "title": "Ich antworte der Person."
    },
    {
      "uuid": "05cd023b-4ed0-46b2-ba87-be073f9e4cf2",
      "step_input_uuid": "c64032c5-76d6-49e0-b5c7-d0709ac83c0b",
      "step_output_uuid": "22ace06b-c5dc-4f3f-ac5a-42e258fa974d",
      "title": "Ich ignoriere die Person."
    }
  ],
  "waypoint": {
    "uuid": "e6ded33f-b37c-4d31-9d6c-380eb4486c53",
    "coordinates": {
      "lat": "53.551086",
      "lon": "9.993682"
    }
  }
}
```
