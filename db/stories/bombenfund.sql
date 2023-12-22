INSERT INTO stories (uuid, description, title, asset_id, active) 
VALUES (
    /* uuid */          'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* description */   'Der Geheimdienst ist alarmiert: Es wurden Hinweise gefunden, dass es in deiner Stadt zu einem Bombenanschlag kommen soll. Der einzige Anhaltspunkt ist ein verschlüsseltes Schreiben eines Extremisten. Kannst du den Code knacken, den Anschlag verhindern und die Täter festnehmen?', 
    /* title */         'Bombenfund', 
    /* asset_id */      '4Y2KxoTIpnsHgXoUKBBph2',
    /* active */        TRUE
);

/* << Waypoints ************************************/
INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '9c624fd4-cd10-4b21-a5e7-006a687a42cc', 
    /* place_type */        'police', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '63080306-d14a-46ee-bd1b-aac630a47bea', 
    /* place_type */        'town-hall', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '825f08d6-3dcd-440e-b599-06b03848c383', 
    /* place_type */        'pharmacy', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '7022612c-9e4c-4e3a-b482-3b976fa19e12', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '2e3f20a1-16bc-4807-a65d-9e3fff0f4854', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);
/* >> Waypoints ************************************/

/* << Steps ************************************/
INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '1bf23e66-1147-4ae7-9cfc-6f60d61a8492', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'audio',
    /* asset_id */      '2h0RBr2h8ROUBKjAN3bCfR',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0561bd71-8050-4960-b8bf-cd4174b70fb5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '9c624fd4-cd10-4b21-a5e7-006a687a42cc',
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'audio',
    /* asset_id */      '2InJfdf9ZCKzbCXMg2oLZc',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '35708dc7-3c79-471c-aab5-56e7c3d750b6', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'image',
    /* asset_id */      'hI4YM93pp2DnXRTpTWdpo',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '53d78682-c51c-4b81-88ae-276d8413c376', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'image',
    /* asset_id */      '1ylgBRu0p8GIvQXzY27EcS',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'cb797897-1a92-468c-b3c6-f804c1383466', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'image',
    /* asset_id */      '1iRBLfi5SYydBEuE32frKf',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f7f653b5-d88b-4d47-a3a1-22d4432855dc', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Fehlgeschlagen',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Der Anschlag konnte nicht verhindert werden!',
    /* ending */        'failure'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'deb6cf10-05e6-41ba-a312-34659959cc0c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '63080306-d14a-46ee-bd1b-aac630a47bea',
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'video',
    /* asset_id */      '4e7EGkCzkA5dZiCmiVantv',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '8fbce97b-6289-43ab-8cb0-719194d52650', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'image',
    /* asset_id */      '6V798WKwA6CcQRhFIBUdJ0',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '916946ca-830d-4dc5-baf3-7d8851bdd717', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'image',
    /* asset_id */      '4k3e1AuzE9SXFL0FDalJl5',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ce288d71-818b-4f2d-8900-c048e3a5a093', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum dolor sit amet.',
    /* media_type */    'image',
    /* asset_id */      's824wUmXI4r7SNBD2vCLn',
    /* title */         'Lorem ipsum dolor sit amet.',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '816e8c13-2351-4d8a-bd4c-b80937f568bd', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der eingegebene Code ist falsch. Schaue dir die Bombe noch einmal genau an',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Leider falsch',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '9028ec84-485e-4696-a316-a1bfdd1d9f61', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Du konntest die Bome entschärfen!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Erfolg!',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Gehe zum Labor und suche nach DNA',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Nächster Schritt',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '995bc2f9-a744-4950-8ae4-4d51eacbf73c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Die Umgebung ist abgesucht. In der Umgebung befidet sich keine weiterer Bombe',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Umgebung abgesucht',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '2861587e-aa37-4fa0-98d9-ec62f77601e0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '5pTFhUBgLofC3w50nsxc37',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '732dfd3e-fbbe-4481-bea6-101cd54c9af5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '21Hm9MTED93TeJBWSPdAG9',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '37482099-82c8-4465-aa26-dfc0f4228f1e', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Was möchtest du dann machen?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Verstanden!',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '88ccf8bf-3336-45e9-990a-32000df11b3a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '825f08d6-3dcd-440e-b599-06b03848c383',
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '5GyGVJ0GNtgMjacAyzayYz',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'd090087a-1d71-4510-9cb6-b8ded7ba7293', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '2nR8vrK6C7KK6wivwC0rhY',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6a72359f-f41f-4c59-a553-63750dd9f9fd', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '7022612c-9e4c-4e3a-b482-3b976fa19e12',
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      'OvaJ1NyfBOLaxSjvvj2Uz',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c2770352-445b-46ff-9d87-fe2b9591655a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Fehgeschlagen',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Der Täter bleibt nach dem Anschlag weiter auf der Flucht',
    /* ending */        'failure'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '7ehBM38E2VUW9H1CvfUtg',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'd0839282-1ff2-437f-95d5-5a9388136a93', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schaue dir das Bild noch einmal an',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Überlege nochmal',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'fbb27a56-7db7-4650-8177-5496a0f7fd01', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schaue dir das Bild noch einmal an',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Überlege nochmal',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '599bd4db-fd99-4ae5-8556-551bf5893c12', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '2t1OM77nd5CX6sIw6YCoOx',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '497185e8-b6ee-4acc-8cde-410674938ed3', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '2pFUIXdqgSmZdCw3rX325A',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '88223449-b032-4833-ac07-d3a01e0f77ed', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '7Ho1RVEFnkBbqRy9u85Voy',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'de3a467e-3b76-4490-abb8-d0460dabc761', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Gehe zur Fabrik',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Sehr gut!',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'de108962-b8ac-4229-a004-361f2dfae42c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '2e3f20a1-16bc-4807-a65d-9e3fff0f4854',
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      'WCkq5SkhXbW8Itac9exVO',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'audio',
    /* asset_id */      '1WJ0ysKPFeL72yrOOxsbHA',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '36158640-69d1-43ef-a993-f59a0373fd6d', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '5AejHmKxmol8DWcT0At3vS',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ac618a30-dcdb-46c1-8e74-0fd6299c22de', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schaue dir das Bild genauer an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Hinweis!',
    /* ending */        NULL
);


INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'edf819d7-5ddc-4741-bf92-197f111a80b0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'image',
    /* asset_id */      '4Msqh5JWH6DxFWGHMND72',
    /* title */         'Lorem ipsum',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '35846804-45e5-4213-8dd4-1b0f78ad4fcd', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schau auf das Buch',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Hier der Tipp',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f4258eff-b283-49ab-9322-45185b29d51f', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Wie ist der Code?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Entscheidung',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ccc62d58-2ce5-45e6-abaf-951dfc4527d0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Lorem ipsum',
    /* media_type */    'video',
    /* asset_id */      '7oQ0nNljoHSoELwJ8ZB3JI',
    /* title */         'Lorem ipsum',
    /* ending */        'success'
);
/* >> Steps ************************************/

/* << Decisions ************************************/
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f29bfbe3-cec4-4f33-ab1a-62d34bbb373b',
    /* step_input_uuid */   '1bf23e66-1147-4ae7-9cfc-6f60d61a8492',
    /* step_output_uuid */  '0561bd71-8050-4960-b8bf-cd4174b70fb5',
    /* title */             'Alles Klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2d29867e-374a-4bb3-9943-3f339016c660',
    /* step_input_uuid */   '0561bd71-8050-4960-b8bf-cd4174b70fb5',
    /* step_output_uuid */  '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* title */             'Alles Klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8bce1c48-9617-46e9-87b7-bc6e1239b5da',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  '53d78682-c51c-4b81-88ae-276d8413c376',
    /* title */             'Ich brauche Hilfe beim entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0764d7ea-e0db-458b-bdb4-03bb5e7d4e2b',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'cb797897-1a92-468c-b3c6-f804c1383466',
    /* title */             'Ich brauche keine Hilfe beim entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6395aa96-092c-4493-a1dd-5d7fb9a0abf4',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet an der Brücke statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c39eaddf-160c-448d-b5c8-c1e64dfaf201',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'deb6cf10-05e6-41ba-a312-34659959cc0c',
    /* title */             'Der Anschlag findet am Rathaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5370bb1a-f953-4658-ad4d-39336644025a',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Industriegebiet statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1182eaeb-48d3-49d5-8808-d417b9b23923',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet an der Autobahn statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '62c6ed86-6b94-4c46-b331-3b4fc72afe0f',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Bank statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3b9b464f-859c-4e73-8192-9ec19a0000cb',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Museum statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f4256e09-13f4-4c72-b6b6-04075ea756f2',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Schwimmbad statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0c605202-8b9f-4317-98f8-0a29440b9e99',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Hochhaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ba51a270-f641-4253-8dec-31fa491d8a0f',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Oper statt'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '124b4640-98aa-4250-a710-3f26972145b2',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Uni statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'dcb67bfe-0854-4dd9-9928-904ac83e89b2',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Fitnesstudio statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0864b7d0-dd42-4ae8-98fc-62a84212f3ab',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet an der Brücke statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'dc13e4a2-59a8-4c2e-8446-6b127d91f278',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'deb6cf10-05e6-41ba-a312-34659959cc0c',
    /* title */             'Der Anschlag findet am Rathaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '827056b4-ad5c-42bc-a147-989cd13478d1',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Industriegebiet statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '11d2aedc-570d-4357-9dcb-3e9bdf44ccb2',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet an der Autobahn statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5db8d9d9-e2c4-4806-ac44-bb94a2e6da98',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Bank statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd19ae5c0-bec0-4765-9311-208df6f6ac7c',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Museum statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7ffba1b3-9db7-45aa-b101-7d4ae1309dda',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Schwimmbad statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '43a273ff-f55b-477b-ba4c-d3f5d569d621',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Hochhaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e4dde383-c242-484c-bdc6-e01a38a32aff',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Oper statt'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '42136d85-56be-4697-b36a-eac0ea63c601',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Uni statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7aa5740a-6658-4cb7-bc2c-9ba719b13e1d',
    /* step_input_uuid */   'cb797897-1a92-468c-b3c6-f804c1383466',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Fitnesstudio statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f31cf4a9-2f24-4a89-a1b9-8fb333969d0a',
    /* step_input_uuid */   'deb6cf10-05e6-41ba-a312-34659959cc0c',
    /* step_output_uuid */  '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd939e2ec-57f0-432a-b702-0ac3bd5accf1',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* title */             'Ich brauche Hilfe beim entschlüsseln des Codes'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'da0c7732-ba26-4e01-9a8f-723b7c076342',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* title */             'Ich brauche keine Hilfe beim entschlüsseln des Codes'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '457cc834-1c9f-460a-94e4-d6e4322da651',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '157'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '66832447-079c-44ac-9974-eae0636cc291',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '1552'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '85267717-b5b4-4ddd-9af5-c8729317cc1e',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '354'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '871c1884-898a-4070-be44-7687b8c2bfe4',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '5214'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '90942ec7-59fe-4c31-91ba-2455720ce1e4',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* title */             '145'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b8bd68f3-8cc1-4998-8a91-179cf1cce7c3',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '154'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9e289236-4a3f-4108-a945-fdae6d20f734',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '166'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '296d5224-ce56-47a5-9515-0830274a4589',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '357'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '355eaf01-6181-4296-ae38-e9be3eec1988',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '2872'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '67aa61e6-7e2d-4012-bcd8-fbf6ebf932f3',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '399'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c9f5923b-9dd4-4d11-8685-be0711134662',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '152'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '06d2e041-cc11-4080-874c-957d5504892e',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '222'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e3be7258-6c71-46cd-9308-cbe135f58e42',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '3110'
);
 
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '64ac5f8c-7c1b-456e-8973-07622838e644',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '157'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '868bd434-23dd-4a8d-ba5f-cc3b2d91e90e',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '1552'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bd9fdcc1-62c3-4cf3-9c5c-6552f372e386',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '354'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3df15984-aab0-4bf3-be2b-5e007218b1d8',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '5214'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b84f95b0-33a9-4f4b-bb36-120380d17683',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* title */             '145'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bed89e52-1a51-49ad-82a4-ad31ad3ffc76',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '154'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2f0189cc-2cd7-4cb4-bb10-f7e447a1bb75',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '166'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '750bbe50-4c12-4142-be0d-17d63df5c1f6',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '357'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cf19f435-c8d1-429b-8039-7b93239045ab',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '2872'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f648a642-2879-40fe-b416-f90f76b25ebe',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '399'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd096cf3f-07f0-4118-88d5-121a94dbcd23',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '152'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ea6bb1f3-cfda-4cdb-a331-46c9435a0bd4',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '222'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '376927f7-05b4-473e-9d1e-44c1cea6d56a',
    /* step_input_uuid */   '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* step_output_uuid */  '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9edf21d0-a2fc-4692-a43c-ca85623e5879',
    /* step_input_uuid */   '916946ca-830d-4dc5-baf3-7d8851bdd717',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '3110'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2c4fdb87-c5be-42f3-8140-dcab42826762',
    /* step_input_uuid */   '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bombe auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4b7ac16f-5db4-4da0-baeb-2c29f1d40871',
    /* step_input_uuid */   '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* step_output_uuid */  '995bc2f9-a744-4950-8ae4-4d51eacbf73c',
    /* title */             'Ich suche in der Umgebung  nach einer weiteren Bombe'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4e736b02-a707-4474-a4bc-6b54eb996329',
    /* step_input_uuid */   '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich suche nach einer Überwachungskamera in der Umgebung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '85d370cb-58f0-48df-982a-a02374550851',
    /* step_input_uuid */   '995bc2f9-a744-4950-8ae4-4d51eacbf73c',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bome auf DNA'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '48b73a9d-859e-4b52-9377-5f4bd0eb9657',
    /* step_input_uuid */   '995bc2f9-a744-4950-8ae4-4d51eacbf73c',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich suche nach einer Überwachungskamera in der Umgebung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd3c47182-beef-4189-96ab-73269ae7abed',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* title */             'Mir fällt auf, dass der Täter eine Pistole hat'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '751eb262-0af2-4cca-844c-ef4d058ae069',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* title */             'Mir fällt auf, dass der Täter telefoniert'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a96a0ad7-6d4c-4afd-be31-be5cdd509220',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* title */             'Mir fällt auf, dass ein Komplize am Bildrand steht'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '239f0e48-05b0-4795-be9b-64fc3bebb9f6',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Mir fällt auf, dass der Täter eine Zigarette weg schmeißt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3d78756f-e7c9-4c7b-a79c-c76a204222aa',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '37482099-82c8-4465-aa26-dfc0f4228f1e',
    /* title */             'Mir fällt nichts wichtiges auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f127ab17-97cb-4ced-8e6d-c4898f36b2bd',
    /* step_input_uuid */   '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bome auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'edb3cbe2-491c-4384-ab45-a63b371b8992',
    /* step_input_uuid */   '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich schaue mir das Video noch einmal an'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5c460983-10b9-4c04-ac2e-442a21ff3ead',
    /* step_input_uuid */   '37482099-82c8-4465-aa26-dfc0f4228f1e',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bome auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '94377c15-be18-4676-a5bf-f024d074a8a4',
    /* step_input_uuid */   '37482099-82c8-4465-aa26-dfc0f4228f1e',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich schaue mir das Video noch einmal an'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd92bb4f9-5528-48fe-b260-e863c51fbc16',
    /* step_input_uuid */   '88ccf8bf-3336-45e9-990a-32000df11b3a',
    /* step_output_uuid */  'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd94835af-65bb-4f94-a6c0-1bd7544991ff',
    /* step_input_uuid */   'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* step_output_uuid */  '88ccf8bf-3336-45e9-990a-32000df11b3a',
    /* title */             'Alles klar'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e64bf39e-2607-4226-a957-895743847354',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  '6a72359f-f41f-4c59-a553-63750dd9f9fd',
    /* title */             'Person 1 ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f258c9b8-9763-40ce-956a-6788b5388575',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Person 2 ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'afb94a76-44f9-4357-9b3b-5ec69d959603',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Person 3 ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '09de471a-dcb5-4c42-abc4-d2103fb452ad',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Person 4 ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cf5c3bb1-b16c-463f-8a27-9808354ae6e4',
    /* step_input_uuid */   '6a72359f-f41f-4c59-a553-63750dd9f9fd',
    /* step_output_uuid */  'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b2674bc5-79f9-4ccc-be2d-017048ef3b54',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* title */             'Mir fällt nichts besonders auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2aeb6023-2d43-4b31-9fc4-c19df7472f27',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt die Unordnung auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '177d2256-103f-4d04-9ced-95909b3da710',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt ein Glas mit Lippenstift auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '556a88c7-6e7b-4f70-9d0f-22919d06f115',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt das Smartphone auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '307aeb37-210b-43ed-849b-b5557059eea9',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* title */             'Mir fällt die Landkarte auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c688a223-2d17-43f2-85c3-a77bb77f9e6c',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt eine Pistole auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a0ed73de-e845-4bc0-86b9-5332276c91bd',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt das Familienfoto auf' 
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '349cdd6a-f4b9-4f0e-89bb-3089728b4f82',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  '599bd4db-fd99-4ae5-8556-551bf5893c12',
    /* title */             'Mir fallen die Zahlen an der Wand auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2867a907-1631-4bde-8f13-5d8012b6cd52',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'fbb27a56-7db7-4650-8177-5496a0f7fd01',
    /* title */             'Mir fällt die Unordnung auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f0aefe1a-d16e-41e0-92cf-f024d5029cf1',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'fbb27a56-7db7-4650-8177-5496a0f7fd01',
    /* title */             'Mir fällt ein Glas mit Lippenstift auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a2151866-4da6-47b6-b785-0902cda5527e',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'fbb27a56-7db7-4650-8177-5496a0f7fd01',
    /* title */             'Mir fällt das Smartphone auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8493407c-c2a3-423e-b67f-9d3b84b47744',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* title */             'Mir fällt die Landkarte auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1c00464a-9644-4454-a290-9237cbd2a2c3',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'fbb27a56-7db7-4650-8177-5496a0f7fd01',
    /* title */             'Mir fällt eine Pistole auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cb7d12fd-d5d6-406f-bbc4-55f72f433844',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'fbb27a56-7db7-4650-8177-5496a0f7fd01',
    /* title */             'Mir fällt das Familienfoto auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8f3b77f7-ad83-421c-9640-9fddbfb5247c',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* title */             'Mir fallen die Zahlen an der Wand auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '774131f0-69bf-4f63-a91a-40405e8076dc',
    /* step_input_uuid */   'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* step_output_uuid */  'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '003f52ef-d8aa-460c-8e68-0c3cc3e76922',
    /* step_input_uuid */   '599bd4db-fd99-4ae5-8556-551bf5893c12',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'dc74b1c7-9b42-4ab9-9e62-f2e7bdf9d975',
    /* step_input_uuid */   'fbb27a56-7db7-4650-8177-5496a0f7fd01',
    /* step_output_uuid */  '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bd85fc6f-e683-47f4-a419-3ba24de2495b',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Der Täter versteckt sich im Hotel'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2ca6020e-8d41-4cff-8ea4-ac81db4084fb',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Der Täter versteckt sich in der Bibliothek'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6f1b06a9-085a-4627-9c6a-dc52ab98c663',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Der Täter versteckt sich im Schwimmbad'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cedc7067-3c13-4fcd-bbda-6801c1f2cf86',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Der Täter versteckt sich in der Schule'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '18706cae-cc32-4ea0-80f4-b1f53a2f49ab',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'de3a467e-3b76-4490-abb8-d0460dabc761',
    /* title */             'Der Täter versteckt sich in der Fabrik'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '171be3e1-23ed-481e-9a63-79463f22d78c',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Der Täter versteckt sich in der Lagerhalle'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4f14b8ed-0b01-4f96-8b0e-3ea0fef6fc1d',
    /* step_input_uuid */   'de3a467e-3b76-4490-abb8-d0460dabc761',
    /* step_output_uuid */  'de108962-b8ac-4229-a004-361f2dfae42c',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2b5df3ea-745a-4a12-87fc-56878cb0a4c3',
    /* step_input_uuid */   'de108962-b8ac-4229-a004-361f2dfae42c',
    /* step_output_uuid */  'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9f054edc-c3d2-45cd-a541-f7306855122c',
    /* step_input_uuid */   'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6',
    /* step_output_uuid */  '36158640-69d1-43ef-a993-f59a0373fd6d',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4ef38c9a-f3ea-40ec-b356-f8466df4a8b9',
    /* step_input_uuid */   '36158640-69d1-43ef-a993-f59a0373fd6d',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             'Ich kenne den Code nicht'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cb8fad64-cfcc-4bc3-8b94-f5d6e8acd942',
    /* step_input_uuid */   '36158640-69d1-43ef-a993-f59a0373fd6d',
    /* step_output_uuid */  'f4258eff-b283-49ab-9322-45185b29d51f',
    /* title */             'Ich kenne den Code'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f1a46cd7-34d0-45f1-9bb5-bffcef2b523e',
    /* step_input_uuid */   'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* step_output_uuid */  'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3fa68c46-a327-4933-b413-6dedc74af100',
    /* step_input_uuid */   'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* step_output_uuid */  '35846804-45e5-4213-8dd4-1b0f78ad4fcd',
    /* title */             'Ich kenne den Code nicht'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '89fbbc1f-2f02-4e30-ac5a-a21dfdc38c70',
    /* step_input_uuid */   'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* step_output_uuid */  'f4258eff-b283-49ab-9322-45185b29d51f',
    /* title */             'Ich weiß den Code jetzt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cd31d800-1674-4f75-904d-2417604abea6',
    /* step_input_uuid */   '35846804-45e5-4213-8dd4-1b0f78ad4fcd',
    /* step_output_uuid */  'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4b7f8a11-6487-4f6f-85f8-d9a4c49d673b',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '473'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '951a867c-1435-4963-ae45-c2def101af93',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '771'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '125b1a52-b9a7-4d90-9cdb-561cb81771d8',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '907'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ceb5a728-6d46-43a3-b97b-87b7a5f75277',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '022'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5a58a585-f420-4690-a868-9ea209b8f3cd',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '762'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ec5e9992-d652-4d01-9cd0-dc98a0fa508b',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '981'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '572f5cca-5261-46a8-aa3b-dc87b81907ab',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '728'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '65b098aa-d2af-4cc9-9d07-b16d6d1c6c73',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '816'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '00160205-7af6-478c-af1c-7cb8e533e247',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ccc62d58-2ce5-45e6-abaf-951dfc4527d0',
    /* title */             '127'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e1a2afb4-bcb2-422c-aba2-46368248889e',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '943'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5a2e7c58-3de4-470a-9b75-de481cb19492',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '263'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '29aa3cb0-9415-4c50-9167-f7774c26b352',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '817'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '728dac56-f1b8-426b-9f6c-377c47bcce0f',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             '090'
);
/* >> Decisions ************************************/

