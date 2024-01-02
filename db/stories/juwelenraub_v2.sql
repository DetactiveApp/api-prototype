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
    /* uuid */              '69b58d36-2e14-4437-8104-2ea9581a5dc1', 
    /* place_type */        'jewelry-store', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '1914024a-0171-456c-82d0-44a3ca667891', 
    /* place_type */        'police', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'fb2c37f7-e2d1-4f4e-9cb4-b6ca3745ca0e', 
    /* place_type */        'police', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '56c075cc-9041-4ae8-a97a-37b9873f293d', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'ad09ba58-6592-4b99-9ce7-5e6f044faaef', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'c3339f41-f590-4e12-a76c-ecaa02f31cd4', 
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
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '1hbaGG6XvwbGfiviPDRsMb',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '23b5b555-edea-4db6-8de5-a1e6cc3110e8', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Laufe zum Juwelier.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'e1b9f22a-09d0-444f-be49-a64658fb3f1e', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ '69b58d36-2e14-4437-8104-2ea9581a5dc1',
    /* description */   'Super, du hast den Juwelier erreicht.',
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
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '3lPsK2FHGZHzrwr4z1Ccui',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'bea8f942-f151-44a8-89d1-d408ca0790db', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '69kiimVA8Z56VpRLrgAC5c',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '622a7ac5-d5e4-4f48-b670-dfa794465216', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '69VjXfTS7MuMgw8jxLZDSf',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b15f8e11-7e4e-494d-8e5e-21f90d66efe6', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Bringe den Hammer zur Polizeistation und überprüfe ihn im Labor auf Fingerabdrücke.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '54069239-c069-48fc-b097-050941ed1ff1', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ '1914024a-0171-456c-82d0-44a3ca667891',
    /* description */   'Du hast die Polizeistation erreicht! Auf dem Hammer konnten tatsächlich Fingerabdrücke gefunden werden. Überprüfe diese mit der Datenbank.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7knwvQi9kTM7L7ZkA6mxvK',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '69639b0c-4797-4b0c-9371-09b78c3ab692', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      'QQ558ogmraqxMMc0EHsVe',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4674c7eb-77f6-4d4d-964c-f5bb3b131782', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      'pZ4WCWwnV7HB4X4COKQ19',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4f8cf4d7-e5a8-47ce-929c-bd132168cfd0', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '6AmevoLnsWyoJPQ5Yx8asU',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '3df2dfae-0ad0-4a91-9362-bcd17867522f', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schau dir das Video noch einmal an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '60348ada-e1a5-47e9-8e34-cfe513b0bf23', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '39CNXnpzItxveXh6BWAIBp',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '88f415bb-5e73-4fe7-8c1a-b6c2069a1728', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '3K2YyP1UeYznkF07SPHIAa',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '75ad5a5d-e9de-445d-8093-7365d25d4ef4', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Die Fingerabrdrücke sind sichergestellt. Gehe nun zur Polizeisttion.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neugikeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4cb72ac3-cdbd-4d17-8c4a-e46750ef51a1', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'fb2c37f7-e2d1-4f4e-9cb4-b6ca3745ca0e',
    /* description */   'Du hast die Polizeistation erreicht. Überprüfe nun die Fingerabdrücke mit der Datenbank.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '64bf9277-815a-407f-bcd9-1d675714d6c4', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '5Q7BnP9TQnRZOTZmlhZiRh',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'fe94872b-c587-47ac-96ed-cba8d71af476', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schau dir das Video noch einmal an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '24714abe-ce57-4da5-9e40-433267e31105', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gut, du hast den richtigen Fingerabdruck zuordnen könen. Schau dir nun die Daten des Verdächtigen an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '340f2b7d-e755-4a77-a272-b561308e2db0', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7G0hdPz6KNBtuqntnRZAq5',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6e8d1ddc-c222-4b0e-90d9-51e6cc06e05c', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '6awaGIY3JhQXVxGUdp2YIr',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'bf546eca-6750-4e40-848e-279d352ebef6', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Laufe zur Adresse des Täters.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'cfda2101-6e1c-4a62-a15b-0329fdc1c6d1', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ '56c075cc-9041-4ae8-a97a-37b9873f293d',
    /* description */   'Super, du hast die Adresse des Verdächtigen erreicht.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0bc88762-aa0a-411d-b2db-428caca0a3bc', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '4IMSt2ipQBVlmxlDmt4lX4',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '700c08ae-051d-4d80-a32b-f9203e904317', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Am Briefkasten konntest du einen Zettel finden. An der Türe ein Graffiti. Vielleicht ist dies ein Hinweis auf den dreistelligen Zahlencode für die Türe.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '3pNrLT9wqmlzUYRFdQHMUK',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'fcdb641b-cd71-4315-ba0e-763164294394', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '1edjkMt7x0yZKle97jck2N',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '67b50e6b-e37b-4397-ac7b-59da966e6855', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist nicht korrekt. Versuche es noch einmal',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
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
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '549ee826-5528-4b48-b969-e9f127196603', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Super es hat geklappt, du bist in der Wohnung. Fällt dir etwas verdächtiges auf?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'a5866c7a-c464-4045-8994-3e411a100d10', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '5Xwv62KYp6lckmsOxjIcDH',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0846153e-9657-4e90-bd48-4c8ac34babb5', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gut. Schaue dir den Arbeitsvertrag genauer an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '85c9f929-03ca-4668-a0e7-882aea66bfba', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '4aJ4TFZi1Ft0RI2ylF9AZ4',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0ed84d94-8019-47b4-aafc-856f71263aed', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '72H2cFEfQCjClXcNwf3hlQ',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6f17f304-dd9c-4fb4-afc7-1ccc5affb765', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Laufe zum Arbeitsplatz des Verdächtigen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '45510536-0dab-49fd-b672-114af47eed51', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'ad09ba58-6592-4b99-9ce7-5e6f044faaef',
    /* description */   'Du bist am Arbeitsplatz des Verdächtigen angekommen. Der Chef ist kooperativ und zeigt dir den Arbeitsplatz des Verdächtigen.',
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
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      'oJd8zJyMwELuIYwbjJpYe',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ded75a09-02c1-4448-bb91-1a8dd9c34721', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Super, das war schwierig zu erkennen! Der Verdächtige hat sein Arbeitshandy am Arbeitsplatz vergessen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c3cad4e4-c98b-411f-80e4-6497522199d7', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '37wkNgCyQ6M3znge0lGhHg',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b68b3119-68ff-49cb-affa-b866f331754d', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      'fyl5OBopMuAZWbhYSFPln',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '7c4068c5-0405-4633-b58d-a230f87727b5', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist korrekt. Du hast Zugriff auf das Smartphone.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b1056a9a-f695-4bbf-8376-d7e500d2f87c', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist nicht korrekt. Versuche es noch einmal.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'cc64a071-7dac-4a0f-9b15-ee903dc09909', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist nicht korrekt. Versuche es noch einmal.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c4958ba8-45aa-4c9b-a50d-c7c2e442b078', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '6Q6Nj8gP4CwIYFUfrCwoYe',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '52e35316-4e17-4bfd-a4bc-96c845745487', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '5eIysKzUT4h2wQI0A4Ro6i',
    /* title */         '',
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
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '98f9fc16-0991-4103-a100-575c7c39e499', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Eine verdächtige Audiodatei wurde gefunden. Hör genau hin! Wo könnte der Täter sein?',
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
    /* description */   'Die Anrufliste ist leer.',
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
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '5Dk9aHpFX9lQndgV8oDyyX',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b8cf8707-013a-4b8a-b399-8f29f8a74a61', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '47Od8WALEabwl645wqDUq0',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'a2747367-88ce-4255-ac0b-7d0bb31e7241', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gut. Laufe schnell zum Bahnhof um den Verdächtigen festzunehmen!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'd7384f8a-8246-41d8-8e5b-88701d0511fa', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7G0hdPz6KNBtuqntnRZAq5',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '33e8b06f-55b3-4ec7-8953-d34b6c3d03f1', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ 'c3339f41-f590-4e12-a76c-ecaa02f31cd4',
    /* description */   'Super, du hast den Bahnhof erreicht. Schaue dich um!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b27c4fdd-d62a-41e4-8e5a-e643d657bdea', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      'WSwqbXUjVCNxWGfaXypDO',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '577b70a4-c966-4111-8597-50464bf447d4', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '39CNXnpzItxveXh6BWAIBp',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f7ba2cf6-6ace-44db-9588-3c41c1275a54', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '5BmaAmh7F8SLw7AIHqKroi',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '69c04712-3396-4e2e-8d3b-c264a8edaf93', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '2wY9kie2vameuiol33tlIP',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6600432e-d931-4098-8434-a120ed2b51ba', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '2FHthfOWVq90gOttUUj3P5',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '2e386c89-b684-4845-adbf-533fd3106435', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '2wY9kie2vameuiol33tlIP',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '7f9594e7-147d-48ee-a2c4-7320d54756ed', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gute Ermittlungsarbeit. der Täter konnte mit deiner Hilfe festgenommen werden und die Juwelen sichergestellt werden. Gut gemacht.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f09018c4-c283-4ec8-bcc1-0545cbe27c20', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7G0hdPz6KNBtuqntnRZAq5',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ba9763e0-46ec-4158-816c-c58f61d20afe', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      'R65TUYC7LuaE6uMP3Elgw',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f663deb4-156a-4b3b-8c62-0b396883e563', 
    /* story_uuid */    '9d8c90de-a80a-445b-baf5-503470f749d2', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '6S4YxMwX8wQfsP6JtX38F7',
    /* title */         '',
    /* ending */        'success'
);
/* >> Steps ************************************/

/* << Decisions ************************************/
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '522086e9-4f7d-4ee5-908f-d53eec54c2c7',
    /* step_input_uuid */   'ce159215-1c3e-4142-89cf-dddead5537fb',
    /* step_output_uuid */  '23b5b555-edea-4db6-8de5-a1e6cc3110e8',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a6329a22-f41f-4549-a0dc-a79b8e9f72c2',
    /* step_input_uuid */   '23b5b555-edea-4db6-8de5-a1e6cc3110e8',
    /* step_output_uuid */  'e1b9f22a-09d0-444f-be49-a64658fb3f1e',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ca0bbc30-c614-41b4-babb-da64dd3a7696',
    /* step_input_uuid */   'e1b9f22a-09d0-444f-be49-a64658fb3f1e',
    /* step_output_uuid */  '9289c507-7797-414f-985e-d0cf511a28a2',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c3ae26ac-a44e-4a82-9de5-c8c74e7c3f7b',
    /* step_input_uuid */   '9289c507-7797-414f-985e-d0cf511a28a2',
    /* step_output_uuid */  'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* title */             'Ich verschaffe mir einen Überblick vom Laden'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ee99df86-7ddf-4fbe-9dcb-5a0a5c32d162',
    /* step_input_uuid */   '9289c507-7797-414f-985e-d0cf511a28a2',
    /* step_output_uuid */  '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* title */             'Ich frage nach der Überwachungskamera'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9f311552-3b55-4d72-9205-522bc6dff1b9',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '622a7ac5-d5e4-4f48-b670-dfa794465216',
    /* title */             'Mir ist der Hammer auf dem Tresen aufgefallen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'aa6e1dec-9c33-44e8-9157-109dc20fa9f3',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '69639b0c-4797-4b0c-9371-09b78c3ab692',
    /* title */             'Mir ist aufgefallen das die Wanduhr stehen geblieben ist'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '67918c73-a8e6-4ae6-96ab-c6ce5fdbaf73',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '4674c7eb-77f6-4d4d-964c-f5bb3b131782',
    /* title */             'Mir sind die Fussspuren auf dem Boden aufgefallen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '71a16fc0-5199-46b7-910d-a0e52620c3b9',
    /* step_input_uuid */   'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* step_output_uuid */  '4f8cf4d7-e5a8-47ce-929c-bd132168cfd0',
    /* title */             'Die Zerbrochene Vitrine sieht verdächtig aus'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2ebab922-9213-4220-94b5-73d2f33d3cf4',
    /* step_input_uuid */   '622a7ac5-d5e4-4f48-b670-dfa794465216',
    /* step_output_uuid */  'b15f8e11-7e4e-494d-8e5e-21f90d66efe6',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '94264446-97cb-4cf8-8a56-7e0208ea356b',
    /* step_input_uuid */   'b15f8e11-7e4e-494d-8e5e-21f90d66efe6',
    /* step_output_uuid */  '54069239-c069-48fc-b097-050941ed1ff1',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7b8533fe-3da7-4fca-9a89-274874467421',
    /* step_input_uuid */   '54069239-c069-48fc-b097-050941ed1ff1',
    /* step_output_uuid */  '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1a12bf21-1daf-4db0-b7c5-3dbdf48ff1c0',
    /* step_input_uuid */   '69639b0c-4797-4b0c-9371-09b78c3ab692',
    /* step_output_uuid */  '3df2dfae-0ad0-4a91-9362-bcd17867522f',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bd289fa2-efc8-4fb3-97fd-9f3f87702af2',
    /* step_input_uuid */   '4674c7eb-77f6-4d4d-964c-f5bb3b131782',
    /* step_output_uuid */  '3df2dfae-0ad0-4a91-9362-bcd17867522f',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9bdde227-9f6b-479a-914f-07baf27f4a93',
    /* step_input_uuid */   '4f8cf4d7-e5a8-47ce-929c-bd132168cfd0',
    /* step_output_uuid */  '3df2dfae-0ad0-4a91-9362-bcd17867522f',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c91ec6bf-eb21-412a-a8f1-1bc251fc07c5',
    /* step_input_uuid */   '3df2dfae-0ad0-4a91-9362-bcd17867522f',
    /* step_output_uuid */  'bea8f942-f151-44a8-89d1-d408ca0790db',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '41b4a218-2c14-46e6-9e33-3245f2cecb5e',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '88f415bb-5e73-4fe7-8c1a-b6c2069a1728',
    /* title */             'Mir ist aufgefallen, dass der Täter die Eingangstür ohne Handschuhe berührt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '13244614-c7ac-4ecd-9e50-569c760c7df0',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir fällt der auffällige Bart des Täters auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8e91db3e-413f-4c28-b816-f42ee3f0ec1f',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir ist das Tattoo unter dem Hals aufgefallen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f9dd5619-efc9-4f93-bca5-afaad1919150',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir fällt die Narbe auf der Stirn des Täters auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9712c406-93ce-45f4-99a2-5610922d7420',
    /* step_input_uuid */   '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* step_output_uuid */  '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* title */             'Mir fällt die Waffe in der Hose des Täters auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '207bf65d-aa2b-4452-9e79-f38d1f2d2a85',
    /* step_input_uuid */   '88f415bb-5e73-4fe7-8c1a-b6c2069a1728',
    /* step_output_uuid */  '75ad5a5d-e9de-445d-8093-7365d25d4ef4',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'eabf8f30-c246-4edb-988d-386c16bbcc9e',
    /* step_input_uuid */   '75ad5a5d-e9de-445d-8093-7365d25d4ef4',
    /* step_output_uuid */  '4cb72ac3-cdbd-4d17-8c4a-e46750ef51a1',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd88d6e30-c104-4fb2-af18-9e8f289e0a22',
    /* step_input_uuid */   '4cb72ac3-cdbd-4d17-8c4a-e46750ef51a1',
    /* step_output_uuid */  '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '574f40c9-9499-45db-8fa9-df58e6e4f237',
    /* step_input_uuid */   '64bf9277-815a-407f-bcd9-1d675714d6c4',
    /* step_output_uuid */  'fe94872b-c587-47ac-96ed-cba8d71af476',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c316cf64-6d7c-493f-ae2f-e94bf11025e7',
    /* step_input_uuid */   'fe94872b-c587-47ac-96ed-cba8d71af476',
    /* step_output_uuid */  '60348ada-e1a5-47e9-8e34-cfe513b0bf23',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd72e4c21-2815-4853-b90b-944bc3e12828',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '24714abe-ce57-4da5-9e40-433267e31105',
    /* title */             'Die Fingerabdrücke passen zu Person A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7f01b67c-8513-44cc-a853-7c379f2ef380',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '340f2b7d-e755-4a77-a272-b561308e2db0',
    /* title */             'Die Fingerabdrücke passen zu Person B'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a3b1367c-f69e-43f6-9593-baa8caeb83c7',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '340f2b7d-e755-4a77-a272-b561308e2db0',
    /* title */             'Die Fingerabdrücke passen zu Person C'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9ac1dd9d-1c3e-4a4e-b1a4-cf66863711f9',
    /* step_input_uuid */   '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* step_output_uuid */  '340f2b7d-e755-4a77-a272-b561308e2db0',
    /* title */             'Die Fingerabdrücke passen zu Person D'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '079bda53-15a0-478d-a791-79a33ad1300b',
    /* step_input_uuid */   '340f2b7d-e755-4a77-a272-b561308e2db0',
    /* step_output_uuid */  '9caa430b-ac6c-4b5d-9cf1-252e8999d8a2',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3f6ead81-c27c-4323-b2ed-d4bf06b55ed4',
    /* step_input_uuid */   '24714abe-ce57-4da5-9e40-433267e31105',
    /* step_output_uuid */  '6e8d1ddc-c222-4b0e-90d9-51e6cc06e05c',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '21fce114-b4a6-42df-8b36-45f14995141b',
    /* step_input_uuid */   '6e8d1ddc-c222-4b0e-90d9-51e6cc06e05c',
    /* step_output_uuid */  'bf546eca-6750-4e40-848e-279d352ebef6',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f993b7a2-0fea-4937-9c16-288608e13126',
    /* step_input_uuid */   'bf546eca-6750-4e40-848e-279d352ebef6',
    /* step_output_uuid */  'cfda2101-6e1c-4a62-a15b-0329fdc1c6d1',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a1f9af93-3a01-490a-8b2c-e2417af5c855',
    /* step_input_uuid */   'cfda2101-6e1c-4a62-a15b-0329fdc1c6d1',
    /* step_output_uuid */  '0bc88762-aa0a-411d-b2db-428caca0a3bc',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bb6b4cc4-8d19-4f04-8bb7-9d0e5a94abd8',
    /* step_input_uuid */   '0bc88762-aa0a-411d-b2db-428caca0a3bc',
    /* step_output_uuid */  '700c08ae-051d-4d80-a32b-f9203e904317',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '93748190-7264-499e-aa4f-476ef40ab51b',
    /* step_input_uuid */   '700c08ae-051d-4d80-a32b-f9203e904317',
    /* step_output_uuid */  '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '83d543cc-f32c-458f-8070-c9eae3daf400',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  'fcdb641b-cd71-4315-ba0e-763164294394',
    /* title */             'Ich brauche Hilfe den Code zu entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'dd99be60-d261-400f-b9d7-85722015ecf2',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             '535'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f44974d7-82d6-46d7-9d1a-399cafb14d86',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             '456'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7bf3335e-a37c-436b-a86c-8df1d2e29e2c',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  '549ee826-5528-4b48-b969-e9f127196603',
    /* title */             '536'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '481fec00-1c23-4acc-ac80-f180cda404df',
    /* step_input_uuid */   '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* step_output_uuid */  '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* title */             '436'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '90ce76dc-430e-4df3-936b-dbfdaf239436',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '67b50e6b-e37b-4397-ac7b-59da966e6855',
    /* title */             '535'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'deef05aa-12d8-4b7f-8e89-910408fa38c3',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '67b50e6b-e37b-4397-ac7b-59da966e6855',
    /* title */             '456'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '286f9796-4c77-464d-84bf-9e90d78d7780',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '549ee826-5528-4b48-b969-e9f127196603',
    /* title */             '536'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8c6a90b5-df4d-4093-81b2-bf385c1c2a07',
    /* step_input_uuid */   'fcdb641b-cd71-4315-ba0e-763164294394',
    /* step_output_uuid */  '67b50e6b-e37b-4397-ac7b-59da966e6855',
    /* title */             '436'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '90494567-acf2-4335-bcb1-1451d9092ff1',
    /* step_input_uuid */   '67b50e6b-e37b-4397-ac7b-59da966e6855',
    /* step_output_uuid */  'fcdb641b-cd71-4315-ba0e-763164294394',
    /* title */             ''
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '96ac1470-d842-4a09-a65b-083843e65df7',
    /* step_input_uuid */   '94063f02-35ec-4a0f-b63e-5b97556e926a',
    /* step_output_uuid */  '4b4a53d6-ec00-4c59-8c07-abc44c7a40bd',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '09cbdb19-d14b-45cd-9ab4-81e8af8da09f',
    /* step_input_uuid */   '549ee826-5528-4b48-b969-e9f127196603',
    /* step_output_uuid */  'a5866c7a-c464-4045-8994-3e411a100d10',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6b7332cc-9187-4bdb-af61-242705002332',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '0846153e-9657-4e90-bd48-4c8ac34babb5',
    /* title */             'Mir fällt der Arbeitsvertrag mit Adresse auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c2a3db22-04fc-44e0-be8d-f4d4ec49fc36',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Mir fällt die Landkarte auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '11b60d0a-c32d-44e9-b46d-64cab12d83c7',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Mir fällt der Laptop auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5818823a-767f-44a1-96da-02aa5ca770bc',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Ich meine die Bilder an der Wand haben eine Bedeutung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7aa1784d-6b03-4e98-82cf-a2ff2a518322',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Mir fällt der Zahlencode auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6c28d868-9eaa-4ac6-a265-5688e8687e8a',
    /* step_input_uuid */   'a5866c7a-c464-4045-8994-3e411a100d10',
    /* step_output_uuid */  '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* title */             'Das Foto auf dem Tisch sieht verdächtig aus'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4df01259-7ef0-4fe4-b66a-658196294609',
    /* step_input_uuid */   '85c9f929-03ca-4668-a0e7-882aea66bfba',
    /* step_output_uuid */  'a5866c7a-c464-4045-8994-3e411a100d10',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5f801f4f-a779-4a5d-9b63-166d22c813e2',
    /* step_input_uuid */   '0846153e-9657-4e90-bd48-4c8ac34babb5',
    /* step_output_uuid */  '0ed84d94-8019-47b4-aafc-856f71263aed',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '46857acc-69cc-482e-8cf5-0e7bc183a598',
    /* step_input_uuid */   '0ed84d94-8019-47b4-aafc-856f71263aed',
    /* step_output_uuid */  '6f17f304-dd9c-4fb4-afc7-1ccc5affb765',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e1610fa5-c1c5-4e5b-9e83-1a33d2010720',
    /* step_input_uuid */   '6f17f304-dd9c-4fb4-afc7-1ccc5affb765',
    /* step_output_uuid */  '45510536-0dab-49fd-b672-114af47eed51',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '51dd205e-3577-40ac-8636-54f9a1e60fda',
    /* step_input_uuid */   '45510536-0dab-49fd-b672-114af47eed51',
    /* step_output_uuid */  '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f28e42b9-0bb1-43db-8f37-081a414790b4',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Mir fällt die Landkarte auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '64203215-f452-40d9-92d3-50482aea16e8',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Mir fällt der Laptop auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a1651559-3eac-4665-a2fe-2aa173a6ab1f',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Ich meine die Bilder an der Wand haben eine Bedeutung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '95da2c54-040f-4a95-a49c-a061be56cff3',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'ded75a09-02c1-4448-bb91-1a8dd9c34721',
    /* title */             'Mir fällt das Smartphone auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e788892a-7c99-4efc-b9c7-9e5334692861',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Mir fällt der Zahlencode auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5216631d-afdb-47a0-868b-9d2aa7e7b2a2',
    /* step_input_uuid */   '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* step_output_uuid */  'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* title */             'Das Foto auf dem Tisch sieht verdächtig aus'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6faad59f-2350-4c93-8082-532e25b4f784',
    /* step_input_uuid */   'c3cad4e4-c98b-411f-80e4-6497522199d7',
    /* step_output_uuid */  '349f8aea-41a8-4f08-9574-e2b801175e2d',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b0063061-c212-4654-8844-fa03b1139d3e',
    /* step_input_uuid */   'ded75a09-02c1-4448-bb91-1a8dd9c34721',
    /* step_output_uuid */  'b68b3119-68ff-49cb-affa-b866f331754d',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '14ee6a5f-8ff8-4bac-801d-7b5f62c84981',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* title */             'Ich brauche Hilfe beim entsperren des Smartphones'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '628200e1-6f91-434b-93f0-162313c11905',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '154f4ed3-3e91-4b9e-9607-aed8d313d6db',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'B'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ba53bfe7-b262-498c-9915-92faf727c009',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'C'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9b3dea18-5698-4da7-a24d-95908de0bd05',
    /* step_input_uuid */   'b68b3119-68ff-49cb-affa-b866f331754d',
    /* step_output_uuid */  'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* title */             'D'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3a5d88d6-2b8f-43d0-9bf1-354ca0c2848b',
    /* step_input_uuid */   'cc64a071-7dac-4a0f-9b15-ee903dc09909',
    /* step_output_uuid */  'b68b3119-68ff-49cb-affa-b866f331754d',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '24d9bd2b-3d0b-41fa-bc6f-d354472d0fcd',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  'b1056a9a-f695-4bbf-8376-d7e500d2f87c',
    /* title */             'A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7fe5558a-02ad-4b94-8286-3758995398ba',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'B'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bbdf0bdd-8e80-49e6-8868-6a8765c44db7',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  'b1056a9a-f695-4bbf-8376-d7e500d2f87c',
    /* title */             'C'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'babf1646-ae5d-4408-9779-a6971881c76c',
    /* step_input_uuid */   'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* step_output_uuid */  'b1056a9a-f695-4bbf-8376-d7e500d2f87c',
    /* title */             'D'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6441b421-e3b8-4a59-b007-bbb166a93cde',
    /* step_input_uuid */   'b1056a9a-f695-4bbf-8376-d7e500d2f87c',
    /* step_output_uuid */  'c4958ba8-45aa-4c9b-a50d-c7c2e442b078',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7e78138e-cf4b-428d-876e-fb58649ce33d',
    /* step_input_uuid */   '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* step_output_uuid */  '52e35316-4e17-4bfd-a4bc-96c845745487',
    /* title */             'Downloads untersuchen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '49394664-2ee4-406e-a0f4-49f383c19206',
    /* step_input_uuid */   '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* step_output_uuid */  '98f9fc16-0991-4103-a100-575c7c39e499',
    /* title */             'Chat untersuchen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'fbfacaa8-fdb9-47f3-996f-323185b3c14a',
    /* step_input_uuid */   '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* step_output_uuid */  'ccbdc01e-2aa0-40c6-8151-a74472f2436e',
    /* title */             'Anrufliste untersuchen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7c0872ea-db93-42b4-b41d-4e4be4282236',
    /* step_input_uuid */   '52e35316-4e17-4bfd-a4bc-96c845745487',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Ich möchte weitere Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8e88e7b9-a2b4-4c13-be43-f95c0c609903',
    /* step_input_uuid */   '52e35316-4e17-4bfd-a4bc-96c845745487',
    /* step_output_uuid */  '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* title */             'Ich möchte keine anderen Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9841db67-f0a9-45fa-8572-0a53169efb83',
    /* step_input_uuid */   '98f9fc16-0991-4103-a100-575c7c39e499',
    /* step_output_uuid */  '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2c795615-5d84-46c9-affb-dcea4c023f59',
    /* step_input_uuid */   '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* step_output_uuid */  '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* title */             'Ich möchte keine anderen Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e16156f5-fb3e-4cb9-908f-7db5d6d1805c',
    /* step_input_uuid */   '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* step_output_uuid */  'b8cf8707-013a-4b8a-b399-8f29f8a74a61',
    /* title */             'Ja, ich brauche Hilfe von der Tontechnik. Vielleicht können sie Hintergrundgeräusche verbessern.'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1c9e78da-5bb7-45e2-8d50-da4e78ee6ee1',
    /* step_input_uuid */   '4ad554fb-68b4-43e4-bfce-90c6fa68e3d6',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Ich möchte mir andere Dateien ansehen.'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0bab714e-ff87-419d-8879-4027f7ad4999',
    /* step_input_uuid */   'b8cf8707-013a-4b8a-b399-8f29f8a74a61',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             'Ich möchte weitere Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7356e3b1-0155-446c-8cc6-4ef039cf48a2',
    /* step_input_uuid */   'b8cf8707-013a-4b8a-b399-8f29f8a74a61',
    /* step_output_uuid */  '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* title */             'Ich möchte keine anderen Dateien ansehen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1eccdfae-6cff-4848-965b-502457ccba79',
    /* step_input_uuid */   'ccbdc01e-2aa0-40c6-8151-a74472f2436e',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cf995674-a5b9-464c-8614-54f92149b26a',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  'a2747367-88ce-4255-ac0b-7d0bb31e7241',
    /* title */             'Der Täter ist am Bahnhof'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '985ba9cb-b68d-45d5-99c8-1b531205168d',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  'd7384f8a-8246-41d8-8e5b-88701d0511fa',
    /* title */             'Der Täter ist am Marktplatz'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5fa9ba6b-8e42-4928-95c0-7c3733678434',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  'd7384f8a-8246-41d8-8e5b-88701d0511fa',
    /* title */             'Der Täter ist an einer Schule'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '811a1610-73ca-4f2f-bfde-c718326f64b1',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  'd7384f8a-8246-41d8-8e5b-88701d0511fa',
    /* title */             'Der Täter ist an einer Bäckerei'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9b2a9df7-bb2d-43c9-8d4b-9c3765819e35',
    /* step_input_uuid */   '77175c2d-26a8-4791-8afb-7d8b6684cab4',
    /* step_output_uuid */  'd7384f8a-8246-41d8-8e5b-88701d0511fa',
    /* title */             'Der Täter ist im Wald'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '014bd111-ec71-42bc-a733-f1430c2788a6',
    /* step_input_uuid */   'd7384f8a-8246-41d8-8e5b-88701d0511fa',
    /* step_output_uuid */  '7c4068c5-0405-4633-b58d-a230f87727b5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '708144b0-4a8c-40dc-bd40-02800d2aef07',
    /* step_input_uuid */   'a2747367-88ce-4255-ac0b-7d0bb31e7241',
    /* step_output_uuid */  '33e8b06f-55b3-4ec7-8953-d34b6c3d03f1',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '07fb0e84-c222-4ee0-87c3-a79faddd6327',
    /* step_input_uuid */   '33e8b06f-55b3-4ec7-8953-d34b6c3d03f1',
    /* step_output_uuid */  'b27c4fdd-d62a-41e4-8e5a-e643d657bdea',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '43b4e4be-8989-4860-b0cd-835d957404d2',
    /* step_input_uuid */   'b27c4fdd-d62a-41e4-8e5a-e643d657bdea',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             'Ich habe den Täter erkannt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '337fe498-38cd-4f24-a17b-2da28045668c',
    /* step_input_uuid */   'b27c4fdd-d62a-41e4-8e5a-e643d657bdea',
    /* step_output_uuid */  '577b70a4-c966-4111-8597-50464bf447d4',
    /* title */             'Ich möchte mir das Video von der Überwachungskamera noch einmal anschauen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4dc3857b-aac6-4227-b5e3-a1aa8047a9b7',
    /* step_input_uuid */   '577b70a4-c966-4111-8597-50464bf447d4',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             'Ich habe den Täter erkannt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2334904b-29ec-4d47-86b9-9d2646b64079',
    /* step_input_uuid */   '577b70a4-c966-4111-8597-50464bf447d4',
    /* step_output_uuid */  '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* title */             'Ich brauche Hilfe beim identifizieren des Täters'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '77e82702-85f9-4923-8499-44bb37f4ddb6',
    /* step_input_uuid */   '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             'Ich habe den Täter erkannt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c299cddf-bcc7-4d1b-96f9-9b1462e930e2',
    /* step_input_uuid */   '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* step_output_uuid */  '6600432e-d931-4098-8434-a120ed2b51ba',
    /* title */             'Ich brauche weitere Hilfe beim identifizieren des Täters'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f20dcb68-d591-49b2-a997-7aa80f53d26a',
    /* step_input_uuid */   '6600432e-d931-4098-8434-a120ed2b51ba',
    /* step_output_uuid */  '2e386c89-b684-4845-adbf-533fd3106435',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4446eb1a-909b-4719-9786-1bce3a1d4c08',
    /* step_input_uuid */   '2e386c89-b684-4845-adbf-533fd3106435',
    /* step_output_uuid */  'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'acc0f916-60b9-499c-aaf1-3011b60d4201',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  'f09018c4-c283-4ec8-bcc1-0545cbe27c20',
    /* title */             'Person A'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b0af869d-4948-4d29-bf59-d5f4fc41e323',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  'f09018c4-c283-4ec8-bcc1-0545cbe27c20',
    /* title */             'Person B'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6f09d13c-9068-435e-9e19-445db4c89cdf',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  '7f9594e7-147d-48ee-a2c4-7320d54756ed',
    /* title */             'Person C'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5c904b32-394d-441d-87ec-faca04a96b38',
    /* step_input_uuid */   'f7ba2cf6-6ace-44db-9588-3c41c1275a54',
    /* step_output_uuid */  'f09018c4-c283-4ec8-bcc1-0545cbe27c20',
    /* title */             'Keine der 3 Personen'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f0f7f1d0-08df-4431-a10d-8c292d550b2d',
    /* step_input_uuid */   'f09018c4-c283-4ec8-bcc1-0545cbe27c20',
    /* step_output_uuid */  '69c04712-3396-4e2e-8d3b-c264a8edaf93',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f557e3dd-8ba0-4295-80d9-70d4fa5a3f95',
    /* step_input_uuid */   '7f9594e7-147d-48ee-a2c4-7320d54756ed',
    /* step_output_uuid */  'ba9763e0-46ec-4158-816c-c58f61d20afe',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2f861063-af84-4fe0-9d03-827012012c09',
    /* step_input_uuid */   'ba9763e0-46ec-4158-816c-c58f61d20afe',
    /* step_output_uuid */  'f663deb4-156a-4b3b-8c62-0b396883e563',
    /* title */             ''
);
/* >> Decisions ************************************/

