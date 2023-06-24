# API Documentation

Version: 1 <br /> Prefix: /api/v1

# Routes:

## GET /game/list?lat={}&lon={}

Gets list of potential stories that are playable around given coordinates.

### Response Example:

```json
[
  {
    "uuid": "4799b75f-50c8-4086-9b65-a12352165ca7",
    "title": "Der Banküberfall",
    "description": "Finde den Täter ...",
    "distance": 2,
    "duration": 20,
    "tags": ["Crime", "18+"],
    "difficulty": 0.6
  }
]
```

---

## GET /game/start?story_uuid={}

Gets the game uuid for forwarding through the single steps of the story. The
input uuid must be a story uuid.

### Response Example:

```json
{
  "game_uuid": "24f80d43-2580-4f48-8328-15fbb288ebb8"
}
```

---

## GET /game/{}/forward?lat={}&lon={}

Gets next step at given game uuid.

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
    "lat": "53.551086",
    "lon": "9.993682"
  }
}
```

---

## GET /game/{}/forward?lat={}&lon={}&to={}

Gets next decision step at given game uuid using the "to" query parameter to
specify the next step e.g. for decision picking. (The "to" query parameter takes
in a UUID)

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
    "lat": "53.551086",
    "lon": "9.993682"
  }
}
```

---
