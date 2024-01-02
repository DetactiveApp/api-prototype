INSERT INTO stories (uuid, description, title, asset_id, active) 
VALUES (
    /* uuid */          '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* description */   'Am helllichten Tag wird der ortsansässige Juwelier ausgeraubt. Juwelen eines mittleren sechsstelligen Werts wurden entwendet. Der Täter hat keine Hinweise am Tatort hinterlassen und der Fall scheint aussichtslos, oder etwa doch nicht?', 
    /* title */         'Juwelenraub', 
    /* asset_id */      '6hKqUoagHGNWelf6tMK60T',
    /* active */        TRUE
);

/* << Waypoints ************************************/
INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'a9c855f3-fd5d-41ee-ba5d-677b59fb0de9', 
    /* place_type */        'jewelry-store', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '200710cd-796a-4f74-9c17-744e5e16854d', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'b400d706-b1e8-4398-ac61-aaf7df717140', 
    /* place_type */        'pharmacy', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'ee4bf0e5-841d-4cfa-b07c-9c80c499a93b', 
    /* place_type */        'police', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '96b715d1-21ab-4f1c-ad28-d13ce18fe45a', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'ec0af47e-01d1-4ec0-83d0-195e01913220', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'ed6380da-3ff0-4c01-a617-bd70939ba34f', 
    /* place_type */        'train-station', 
    /* place_override */    TRUE
);
/* >> Waypoints ************************************/

/* << Steps ************************************/
INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ce159215-1c3e-4142-89cf-dddead5537fb', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '1hbaGG6XvwbGfiviPDRsMb',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '23b5b555-edea-4db6-8de5-a1e6cc3110e8', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'a9c855f3-fd5d-41ee-ba5d-677b59fb0de9',
    /* description */   'Du bist am Juwelier angekommen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '9289c507-7797-414f-985e-d0cf511a28a2', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '3lPsK2FHGZHzrwr4z1Ccui',
    /* title */         'Lorem Ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'bea8f942-f151-44a8-89d1-d408ca0790db', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '69kiimVA8Z56VpRLrgAC5c',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '39fac6fc-130d-4cee-ac82-00d6c7055bbf', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '2kZJm2x0sCDfcPjAJNYrbG',
    /* title */         'Lorem ispum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '024fe062-1094-4ff1-97d3-acbc8e315c6c', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '2BcrR5fZR4L0I17FO6wiis',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4b143777-9f8a-4f3a-9fac-c5f94b866cd8', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '2BcrR5fZR4L0I17FO6wiis',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '69639b0c-4797-4b0c-9371-09b78c3ab692', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      'QQ558ogmraqxMMc0EHsVe',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4674c7eb-77f6-4d4d-964c-f5bb3b131782', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      'pZ4WCWwnV7HB4X4COKQ19',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4f8cf4d7-e5a8-47ce-929c-bd132168cfd0', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '6AmevoLnsWyoJPQ5Yx8asU',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '8bc5a5aa-1274-4768-ba31-becaab0fd184', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '5FQW37nb6MSilCW9PKwlyW',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b6242f89-c8ec-4a8d-b61d-b1c8484ed852', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'a9c855f3-fd5d-41ee-ba5d-677b59fb0de9',
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '6uw2KkowCY3CQoTer4rFpC',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '04a5dc2d-834e-4c75-a070-d721a783fcf8', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Bringe den Abstrich ins Labor & überprüfe ihn mit der Datenbank',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neue Aufgabe',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '2d2670e7-cf78-4202-a0f2-0b254f2fead7', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'b400d706-b1e8-4398-ac61-aaf7df717140',
    /* description */   'lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      'pQd7zINIUAEbWsg75vaGw',
    /* title */         'Lorem ispum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '86c25fda-213f-4107-a6f1-6d4d6fff0e81', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '66foXL6QEj1sbFFaWhGs78',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '2417219a-28d1-464d-8d0a-8f0dc7f82c4d', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '7G0hdPz6KNBtuqntnRZAq5',
    /* title */         'Lorem ipsum',
    /* ending */        'failure'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '60348ada-e1a5-47e9-8e34-cfe513b0bf23', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '39CNXnpzItxveXh6BWAIBp',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '88f415bb-5e73-4fe7-8c1a-b6c2069a1728', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '3K2YyP1UeYznkF07SPHIAa',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '64bf9277-815a-407f-bcd9-1d675714d6c4', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '5Q7BnP9TQnRZOTZmlhZiRh',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '54069239-c069-48fc-b097-050941ed1ff1', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Überprüfe die Fingerabdrücke mit der Datenbank in der Zentrale',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Aufgabe',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'ee4bf0e5-841d-4cfa-b07c-9c80c499a93b',
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '7knwvQi9kTM7L7ZkA6mxvK',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '24714abe-ce57-4da5-9e40-433267e31105', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '7G0hdPz6KNBtuqntnRZAq5',
    /* title */         'Lorem ipsum',
    /* ending */        'failure'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6e8d1ddc-c222-4b0e-90d9-51e6cc06e05c', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '6awaGIY3JhQXVxGUdp2YIr',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'bf546eca-6750-4e40-848e-279d352ebef6', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Laufe zur Adresse des Täters',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Aufgabe',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0bc88762-aa0a-411d-b2db-428caca0a3bc', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ '96b715d1-21ab-4f1c-ad28-d13ce18fe45a',
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '4IMSt2ipQBVlmxlDmt4lX4',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '3pNrLT9wqmlzUYRFdQHMUK',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'fcdb641b-cd71-4315-ba0e-763164294394', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '1edjkMt7x0yZKle97jck2N',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0de195a7-6a2b-43b2-adb5-8ac208ae8d06', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '3pNrLT9wqmlzUYRFdQHMUK',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '549ee826-5528-4b48-b969-e9f127196603', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Super es hat geklappt, du bist in der Wohnung.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Erfolg!',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '94063f02-35ec-4a0f-b63e-5b97556e926a', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist nicht korrekt. Versuche es noch einmal',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Leider falsch',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'a5866c7a-c464-4045-8994-3e411a100d10', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '5Xwv62KYp6lckmsOxjIcDH',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0ed84d94-8019-47b4-aafc-856f71263aed', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '72H2cFEfQCjClXcNwf3hlQ',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '85c9f929-03ca-4668-a0e7-882aea66bfba', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '4aJ4TFZi1Ft0RI2ylF9AZ4',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6f17f304-dd9c-4fb4-afc7-1ccc5affb765', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Laufe zum Arbeitsplatz',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Aufgabe',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '45510536-0dab-49fd-b672-114af47eed51', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'ec0af47e-01d1-4ec0-83d0-195e01913220',
    /* description */   'Du bist angekommen. Untersuche den Arbeitsplatz.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '349f8aea-41a8-4f08-9574-e2b801175e2d', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      'oJd8zJyMwELuIYwbjJpYe',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c3cad4e4-c98b-411f-80e4-6497522199d7', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '37wkNgCyQ6M3znge0lGhHg',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b68b3119-68ff-49cb-affa-b866f331754d', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      'fyl5OBopMuAZWbhYSFPln',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c4958ba8-45aa-4c9b-a50d-c7c2e442b078', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '6Q6Nj8gP4CwIYFUfrCwoYe',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c771b4fb-c39b-41ea-89d1-c35aa2c272e1', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      'fyl5OBopMuAZWbhYSFPln',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'cc64a071-7dac-4a0f-9b15-ee903dc09909', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist nicht korrekt. Versuche es noch einmal',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Fehlgeschlagen!',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '7c4068c5-0405-4633-b58d-a230f87727b5', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist korrekt. Du hast Zugriff auf das Smartphone',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Erfolg!',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '52e35316-4e17-4bfd-a4bc-96c845745487', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '5eIysKzUT4h2wQI0A4Ro6i',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '98f9fc16-0991-4103-a100-575c7c39e499', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Eine verdächtige Audiodatei wurde gefunden. Hör genau hin! Wo könnte der Täter sein',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ccbdc01e-2aa0-40c6-8151-a74472f2436e', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Die Anrufliste ist leer',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '5Dk9aHpFX9lQndgV8oDyyX',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b8cf8707-013a-4b8a-b399-8f29f8a74a61', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '47Od8WALEabwl645wqDUq0',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '77175c2d-26a8-4791-8afb-7d8b6684cab4', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Wo ist der Täter?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Entscheidung',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'a2747367-88ce-4255-ac0b-7d0bb31e7241', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Gehe zum Bahnhof',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Aufgabe',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '577b70a4-c966-4111-8597-50464bf447d4', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'ed6380da-3ff0-4c01-a617-bd70939ba34f',
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      'WSwqbXUjVCNxWGfaXypDO',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f7ba2cf6-6ace-44db-9588-3c41c1275a54', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '5BmaAmh7F8SLw7AIHqKroi',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '69c04712-3396-4e2e-8d3b-c264a8edaf93', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '2wY9kie2vameuiol33tlIP',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6600432e-d931-4098-8434-a120ed2b51ba', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '2FHthfOWVq90gOttUUj3P5',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '2e386c89-b684-4845-adbf-533fd3106435', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '2wY9kie2vameuiol33tlIP',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '247eb01a-84d7-4c26-88e8-fd97225d4b15', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      'R65TUYC7LuaE6uMP3Elgw',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f663deb4-156a-4b3b-8c62-0b396883e563', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '6S4YxMwX8wQfsP6JtX38F7',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);
/* >> Steps ************************************/

/* << Decisions ************************************/
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd3a3ed3b-4c18-441e-b336-518fee79b4cf',
    /* step_input_uuid */   'ce159215-1c3e-4142-89cf-dddead5537fb',
    /* step_output_uuid */  '23b5b555-edea-4db6-8de5-a1e6cc3110e8',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5ede6f33-6cbe-4f6a-a072-1f86481ab25b',
    /* step_input_uuid */   '23b5b555-edea-4db6-8de5-a1e6cc3110e8',
    /* step_output_uuid */  '9289c507-7797-414f-985e-d0cf511a28a2',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7620629b-422e-4876-a1ad-e299cb793698',
    /* step_input_uuid */   '9289c507-7797-414f-985e-d0cf511a28a2',
    /* step_output_uuid */  'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* title */             'Ich verschaffe mir einen Überblick vom Laden'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2c52b799-8d4c-4767-9f7e-36116a9c6dcf',
    /* step_input_uuid */   '9289c507-7797-414f-985e-d0cf511a28a2',
    /* step_output_uuid */  '39fac6fc-130d-4cee-ac82-00d6c7055bbf',
    /* title */             'Ich frage nach der Überwachungskamera'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ed58fb44-862c-4a5b-a1cd-7c244622f2cd',
    /* step_input_uuid */   '9289c507-7797-414f-985e-d0cf511a28a2',
    /* step_output_uuid */  '024fe062-1094-4ff1-97d3-acbc8e315c6c',
    /* title */             'Ich frage den Juwelier, ob er was verdächtiges beobachtet hat'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3b1bd605-c020-4f75-b31b-99f6250cb643',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '69639b0c-4797-4b0c-9371-09b78c3ab692',
    /* title */             'Mir ist aufgefallen das die Wanduhr stehen geblieben ist'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '70ac30ec-aca6-4aa0-b97d-2a4205a83612',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '4674c7eb-77f6-4d4d-964c-f5bb3b131782',
    /* title */             'Mir sind die Fussspuren auf dem Boden aufgefallen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4d207964-424d-4215-8b55-8f094664c8e3',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '4b143777-9f8a-4f3a-9fac-c5f94b866cd8',
    /* title */             'Mir ist der Hammer auf dem Tresen aufgefallen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e279137a-0100-4080-8d22-77cbe0ffb7be',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '4f8cf4d7-e5a8-47ce-929c-bd132168cfd0',
    /* title */             'Die Zerbrochene Vitrine sieht verdächtig aus'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '424e4ec0-bf94-4e7e-ad64-36138e8c9dee',
    /* step_input_uuid */   '4b143777-9f8a-4f3a-9fac-c5f94b866cd8',
    /* step_output_uuid */  '8bc5a5aa-1274-4768-ba31-becaab0fd184',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3e52b989-a7ac-4da3-979c-a5735705e2c3',
    /* step_input_uuid */   '69639b0c-4797-4b0c-9371-09b78c3ab692',
    /* step_output_uuid */  'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9ae47b6e-b505-44d8-9508-f9bd173e8aa6',
    /* step_input_uuid */   '4674c7eb-77f6-4d4d-964c-f5bb3b131782',
    /* step_output_uuid */  'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9b44189e-3bbb-4564-97e5-f95b4d32ed02',
    /* step_input_uuid */   '4f8cf4d7-e5a8-47ce-929c-bd132168cfd0',
    /* step_output_uuid */  'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd53cf6bd-9e35-4c99-a837-e003f707d812',
    /* step_input_uuid */   '39fac6fc-130d-4cee-ac82-00d6c7055bbf',
    /* step_output_uuid */  '9289c507-7797-414f-985e-d0cf511a28a2',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '10647659-30f1-4690-b99b-a5e73d62922c',
    /* step_input_uuid */   '024fe062-1094-4ff1-97d3-acbc8e315c6c',
    /* step_output_uuid */  '8bc5a5aa-1274-4768-ba31-becaab0fd184',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cc32470b-6fdb-4146-8402-3aab5c507c35',
    /* step_input_uuid */   '8bc5a5aa-1274-4768-ba31-becaab0fd184',
    /* step_output_uuid */  'b6242f89-c8ec-4a8d-b61d-b1c8484ed852',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3346cedd-6de9-42f0-a96f-33e5e412b49e',
    /* step_input_uuid */   'b6242f89-c8ec-4a8d-b61d-b1c8484ed852',
    /* step_output_uuid */  '04a5dc2d-834e-4c75-a070-d721a783fcf8',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '663f9e8e-2b50-40e6-8d08-fd6660616497',
    /* step_input_uuid */   '04a5dc2d-834e-4c75-a070-d721a783fcf8',
    /* step_output_uuid */  '2d2670e7-cf78-4202-a0f2-0b254f2fead7',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0ef1ddd4-e9ab-48d7-bdee-88784dc6f0f6',
    /* step_input_uuid */   '2d2670e7-cf78-4202-a0f2-0b254f2fead7',
    /* step_output_uuid */  '86c25fda-213f-4107-a6f1-6d4d6fff0e81',
    /* title */             'Die Fingerabdrücke passen zu Person A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a7491455-9e91-4e75-b065-c5030cbe215a',
    /* step_input_uuid */   '2d2670e7-cf78-4202-a0f2-0b254f2fead7',
    /* step_output_uuid */  '2417219a-28d1-464d-8d0a-8f0dc7f82c4d',
    /* title */             'Die Fingerabdrücke passen zu Person B'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd91d3ac7-7a8e-4d82-a766-4f87a668742e',
    /* step_input_uuid */   '2d2670e7-cf78-4202-a0f2-0b254f2fead7',
    /* step_output_uuid */  '2417219a-28d1-464d-8d0a-8f0dc7f82c4d',
    /* title */             'Die Fingerabdrücke passen zu Person C'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5613fe6d-0ae8-4b2b-a3f5-b4d0861839f3',
    /* step_input_uuid */   '2d2670e7-cf78-4202-a0f2-0b254f2fead7',
    /* step_output_uuid */  '2417219a-28d1-464d-8d0a-8f0dc7f82c4d',
    /* title */             'Die Fingerabdrücke passen zu Person D'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7027c0a0-c4db-4ad7-89e5-71e0c09b32d0',
    /* step_input_uuid */   '86c25fda-213f-4107-a6f1-6d4d6fff0e81',
    /* step_output_uuid */  '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '23813e99-4a02-40dc-9e55-77cfedbeaff4',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir fällt der auffällige Bart des Täters auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e52dfe9f-021d-4069-95d8-9c18519341b6',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir ist das Tattoo unter dem Hals aufgefallen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2a4c7786-ed23-4cd5-b789-0ac9bf7cd1be',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '88f415bb-5e73-4fe7-8c1a-b6c2069a1728',
    /* title */             'Mir ist aufgefallen, dass der Täter die Eingangstür ohne Handschuhe berührt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4fe96a10-9949-45ab-bb48-1b99f7425fdf',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir fällt die Narbe auf der Stirn des Täters auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'da62291c-c3ac-4a25-a8c7-4996fb5481f9',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir fällt die Waffe in der Hose des Täters auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a470680e-9c44-494f-9c52-cf44bffcb24a',
    /* step_input_uuid */   '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* step_output_uuid */  '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd25327d1-3874-4f56-8b46-05bc3be32fb8',
    /* step_input_uuid */   '88f415bb-5e73-4fe7-8c1a-b6c2069a1728',
    /* step_output_uuid */  '54069239-c069-48fc-b097-050941ed1ff1',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '539aaadf-438b-4c0b-bd79-eb4892b68586',
    /* step_input_uuid */   '54069239-c069-48fc-b097-050941ed1ff1',
    /* step_output_uuid */  '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '761d1ca4-6984-4398-95ec-55e475eddbc3',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '6e8d1ddc-c222-4b0e-90d9-51e6cc06e05c',
    /* title */             'Die Fingerabdrücke passen zu Person A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2424494a-689f-4f2e-93af-d53a39c71d4e',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Die Fingerabdrücke passen zu Person B'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '47704403-9ae3-4e49-bb63-f4e78530df7c',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Die Fingerabdrücke passen zu Person C'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2c8b5ebf-5888-4545-a29f-c44597b4033b',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Die Fingerabdrücke passen zu Person D'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '616191cf-3ad8-4092-b00b-a50454ff6f2c',
    /* step_input_uuid */   '6e8d1ddc-c222-4b0e-90d9-51e6cc06e05c',
    /* step_output_uuid */  'bf546eca-6750-4e40-848e-279d352ebef6',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd7ed406b-c275-4128-ae2d-174e403a07c9',
    /* step_input_uuid */   'bf546eca-6750-4e40-848e-279d352ebef6',
    /* step_output_uuid */  '0bc88762-aa0a-411d-b2db-428caca0a3bc',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '710d7fe4-2a43-410b-817a-be2cfb355161',
    /* step_input_uuid */   '0bc88762-aa0a-411d-b2db-428caca0a3bc',
    /* step_output_uuid */  '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7333431d-2f14-444c-b9b1-6313ce57ccdd',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  'fcdb641b-cd71-4315-ba0e-763164294394',
    /* title */             'Ich brauche Hilfe den Code zu entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4ebca99f-cd24-4e4a-bf00-85b93c7ed245',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  '0de195a7-6a2b-43b2-adb5-8ac208ae8d06',
    /* title */             'Ich brauche keine Hilfe bei dem entschlüsseln des Codes'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'aa2a6eb6-e955-4cb3-a150-40680f835893',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             'Falsch 1'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '57c85736-d1dc-4cbb-bbb8-cf37f095ec64',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             'Falsch 2'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '94b8dc43-8a79-4de4-a373-59d1544fd47f',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '549ee826-5528-4b48-b969-e9f127196603',
    /* title */             'Richtig'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '944c8432-3650-42f5-b3e5-d72dc16dfa72',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             'Falsch 3'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5d61331a-0349-4e1a-bd2b-247db8607b8e',
    /* step_input_uuid */   '0de195a7-6a2b-43b2-adb5-8ac208ae8d06',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             'Falsch 1'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'fd24ebda-d60a-4c75-9236-3dd70ff6e773',
    /* step_input_uuid */   '0de195a7-6a2b-43b2-adb5-8ac208ae8d06',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             'Falsch 2'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'af83138a-e931-4a07-b1e5-480d5488dcb6',
    /* step_input_uuid */   '0de195a7-6a2b-43b2-adb5-8ac208ae8d06',
    /* step_output_uuid */  '549ee826-5528-4b48-b969-e9f127196603',
    /* title */             'Richtig'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7471e12b-5f11-4d66-9988-9e3307199dca',
    /* step_input_uuid */   '0de195a7-6a2b-43b2-adb5-8ac208ae8d06',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             'Falsch 3'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f86bd5e6-6e8a-4bc4-a81b-21740507210d',
    /* step_input_uuid */   '549ee826-5528-4b48-b969-e9f127196603',
    /* step_output_uuid */  'a5866c7a-c464-4045-8994-3e411a100d10',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '305db662-a408-47df-ab79-49c61fb5f98f',
    /* step_input_uuid */   '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* step_output_uuid */  '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd5f5d46c-fca9-4315-ae34-30416ec54a69',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Mir fällt die Landkarte auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1cd5e593-5850-497a-836f-3c14b4f478af',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Mir fällt der Laptop auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '844765da-2cd3-4c77-aed0-49c92d770360',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Ich meine die Bilder an der Wand haben eine Bedeutung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b82a0979-607d-40d1-b9e2-ba0f67db0c36',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Mir fällt der Zahlencode auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '61567866-ded6-4b03-84da-624698acabf2',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '0ed84d94-8019-47b4-aafc-856f71263aed',
    /* title */             'Mir fällt der Arbeitsvertrag mit Adresse auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '500d7840-7385-4341-a84d-8a201ebdf4b2',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Das Foto auf dem Tisch sieht verdächtig aus'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2e5e0c41-aec3-47da-ba2a-4c88cdc2ca6d',
    /* step_input_uuid */   '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* step_output_uuid */  'a5866c7a-c464-4045-8994-3e411a100d10',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1a69204d-4989-4ee7-974c-8039b3b404d8',
    /* step_input_uuid */   '0ed84d94-8019-47b4-aafc-856f71263aed',
    /* step_output_uuid */  '6f17f304-dd9c-4fb4-afc7-1ccc5affb765',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0a875b1c-85d9-4d7a-b73e-1a3cce8f55b7',
    /* step_input_uuid */   '6f17f304-dd9c-4fb4-afc7-1ccc5affb765',
    /* step_output_uuid */  '45510536-0dab-49fd-b672-114af47eed51',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd7381d15-32f2-4897-a65f-f3425580df37',
    /* step_input_uuid */   '45510536-0dab-49fd-b672-114af47eed51',
    /* step_output_uuid */  '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0fe2c5e0-1480-4331-b95f-0907dd728d29',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Mir fällt die Landkarte auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ead300f6-b3b7-4495-97c4-d4889c822d30',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Mir fällt der Laptop auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c5bdcf61-aba5-4d57-9aec-3a4662d364f6',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Ich meine die Bilder an der Wand haben eine Bedeutung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8e426181-5b8e-4e83-8b67-b245c4296383',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'b68b3119-68ff-49cb-affa-b866f331754d',
    /* title */             'Mir fällt das Smartphone auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '700866ff-e46d-4be0-b320-686355806d58',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Mir fällt der Zahlencode auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4d103199-ed15-42bd-967e-dea7b61ee237',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Das Foto auf dem Tisch sieht verdächtig aus'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9aa50593-8f4e-4e11-9fab-24c2c558799c',
    /* step_input_uuid */   'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* step_output_uuid */  '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '09cfabcd-3bd5-43a7-a29b-88ffdfef5162',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* title */             'Ich brauche Hilfe beim entsperren des Smartphones'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4fae76be-207e-4525-8a4d-297e981f4d8c',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'Falsch 1'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f00f36bb-9595-442f-b082-72efe0c7c86b',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'Falsch 2'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '895ca721-f090-4f14-bde6-527a0d47dcc2',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'Falsch 3'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5dacfcf3-08d6-4422-ac48-540acb8f80fe',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Richtig'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a728fc9a-60fe-4274-8b02-830114edbaaf',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  'c771b4fb-c39b-41ea-89d1-c35aa2c272e1',
    /* title */             'Ich brauche keine Hilfe bei dem entsperren des Smartphones'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cb348fb0-56f9-4d21-a6f7-0c414549eb98',
    /* step_input_uuid */   'c771b4fb-c39b-41ea-89d1-c35aa2c272e1',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'Falsch 1'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '19f9e50f-1d05-48d0-9cca-230def421298',
    /* step_input_uuid */   'c771b4fb-c39b-41ea-89d1-c35aa2c272e1',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'Falsch 2'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '49046f92-fc4c-4b57-ad70-494299df6b4c',
    /* step_input_uuid */   'c771b4fb-c39b-41ea-89d1-c35aa2c272e1',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'Falsch 3'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f747b8a8-0bbe-4788-9ff3-9d49628f7088',
    /* step_input_uuid */   'c771b4fb-c39b-41ea-89d1-c35aa2c272e1',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Richtig'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '68bf2a79-6b1e-4d99-a328-c14f3fef1abc',
    /* step_input_uuid */   'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* step_output_uuid */  '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '324177b5-e734-463f-b287-e40746d1d46a',
    /* step_input_uuid */   '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* step_output_uuid */  '52e35316-4e17-4bfd-a4bc-96c845745487',
    /* title */             'Downloads untersuchen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b2b8dc1a-a974-4099-85f6-b523027f50db',
    /* step_input_uuid */   '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* step_output_uuid */  '98f9fc16-0991-4103-a100-575c7c39e499',
    /* title */             'Chats untersuchen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0a27d2fb-630f-435c-bbee-f55086fa1b3a',
    /* step_input_uuid */   '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* step_output_uuid */  'ccbdc01e-2aa0-40c6-8151-a74472f2436e',
    /* title */             'Anrufliste untersuchen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3dc0b803-4954-4736-b131-14b337919ec8',
    /* step_input_uuid */   'ccbdc01e-2aa0-40c6-8151-a74472f2436e',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a3e9ffeb-6750-4b50-a293-69ca766c880a',
    /* step_input_uuid */   '98f9fc16-0991-4103-a100-575c7c39e499',
    /* step_output_uuid */  '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '98f40ad6-c4a1-4b5c-8d36-9443f2e59ebc',
    /* step_input_uuid */   '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* step_output_uuid */  '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* title */             'Nein, ich brauche keine Hilfe'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6e38a36c-339d-4fff-9a40-8aa4b9c33697',
    /* step_input_uuid */   '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* step_output_uuid */  'b8cf8707-013a-4b8a-b399-8f29f8a74a61',
    /* title */             'Ja, ich brauche Hilfe von der Tontechnik. Vielleicht können sie Hintergrundgeräusche verbessern.'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cdfee362-ee20-41b2-a88c-b08cd576532b',
    /* step_input_uuid */   '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Ich möchte mir andere Dateien ansehen.'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd6fb756e-6ec1-4ef4-944c-faa398603faa',
    /* step_input_uuid */   'b8cf8707-013a-4b8a-b399-8f29f8a74a61',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Ich möchte weitere Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cbff78a3-930d-45ef-9344-9ee46b5ef129',
    /* step_input_uuid */   'b8cf8707-013a-4b8a-b399-8f29f8a74a61',
    /* step_output_uuid */  '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* title */             'Ich möchte keine anderen Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5cab18c1-c083-42c8-a888-4fa5bea47d7f',
    /* step_input_uuid */   '52e35316-4e17-4bfd-a4bc-96c845745487',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Ich möchte weitere Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'db015218-8102-47d3-bc8d-ad8b31cbcb90',
    /* step_input_uuid */   '52e35316-4e17-4bfd-a4bc-96c845745487',
    /* step_output_uuid */  '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* title */             'Ich möchte keine anderen Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '20e2baf3-7037-4d8c-adc9-d9d7bd87b19e',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  'a2747367-88ce-4255-ac0b-7d0bb31e7241',
    /* title */             'Der Täter ist am Bahnhof'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2cebfb4b-01c8-4aec-9e36-ff920a64b2d7',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Der Täter ist am Marktplatz'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f0a6eddf-3038-46e3-ae08-1e3d7813bd18',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Der Täter ist an einer Schule'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b4db83a2-b06d-4848-8933-808f4ddc2d19',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Der Täter ist an einer Bäckerei'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b85144eb-2070-4a0f-9e67-1ec52d54ee96',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Der Täter ist im Wald'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '38d40671-41f7-4121-972c-5e066f431a41',
    /* step_input_uuid */   'a2747367-88ce-4255-ac0b-7d0bb31e7241',
    /* step_output_uuid */  '577b70a4-c966-4111-8597-50464bf447d4',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '79043b56-268a-4282-b4a1-bc8f45b90d8f',
    /* step_input_uuid */   '577b70a4-c966-4111-8597-50464bf447d4',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             'Ich habe den Täter erkannt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '48c8998b-06c8-4260-ba80-524020120d99',
    /* step_input_uuid */   '577b70a4-c966-4111-8597-50464bf447d4',
    /* step_output_uuid */  '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* title */             'Ich brauche Hilfe beim identifizieren des Täters'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2c46e3fe-1c87-4c5f-9724-e97a35622ebc',
    /* step_input_uuid */   '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             'Ich habe den Täter erkannt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '965b97de-8d81-4b9d-a55c-6034882e2d01',
    /* step_input_uuid */   '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* step_output_uuid */  '6600432e-d931-4098-8434-a120ed2b51ba',
    /* title */             'Ich brauche weitere Hilfe beim identifizieren des Täters'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '057a55b6-6459-4e57-8c95-3a36b88b633e',
    /* step_input_uuid */   '6600432e-d931-4098-8434-a120ed2b51ba',
    /* step_output_uuid */  '2e386c89-b684-4845-adbf-533fd3106435',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3bb435d9-db30-48cf-a822-04ec33499a28',
    /* step_input_uuid */   '2e386c89-b684-4845-adbf-533fd3106435',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3d07fd21-c591-40c3-8da1-c5ef64600e7c',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  '247eb01a-84d7-4c26-88e8-fd97225d4b15',
    /* title */             'Der Täter ist Person A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ad0de0f4-32f3-45ae-a564-53c28b431fc2',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Der Täter ist Person B'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c7c3cd1b-981f-4507-b3c4-3d73597de21c',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Der Täter ist Person C'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9710bf89-b496-40e4-8721-591adb8211d9',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Keine der 3 Personen ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b2b7a9fc-01b0-4fa8-a1ac-c09d4caa6852',
    /* step_input_uuid */   '247eb01a-84d7-4c26-88e8-fd97225d4b15',
    /* step_output_uuid */  'f663deb4-156a-4b3b-8c62-0b396883e563',
    /* title */             'Alles klar'
);
/* >> Decisions ************************************/