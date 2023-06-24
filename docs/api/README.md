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
TODO
```

---

## GET /game/{}/forward?lat={}&lon={}&to={}

Gets next decision step at given game uuid using the "to" query parameter.

### Response Example:

```json
TODO
```

---
