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
    /* uuid */              '1d3ce25b-1cc1-4c80-9f8c-10dfb6f01cb5', 
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
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '2h0RBr2h8ROUBKjAN3bCfR',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '50355d97-d8fd-41e3-91dd-b9d3ce1a5ae5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '9c624fd4-cd10-4b21-a5e7-006a687a42cc',
    /* description */   'Sehr gut, du hast die Polizeistation erreicht.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0561bd71-8050-4960-b8bf-cd4174b70fb5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '2InJfdf9ZCKzbCXMg2oLZc',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b0a7751a-beb4-45bb-a36f-1580bd4d9d69', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schau dir die beiden Dateien genau an. Die obere Datei wurde auf dem Computer gefunden. Der untere Zettel in einem E-Mailpostfach. Kannst du die Zettel in Verbindug bringen und ein Lösungswort entschlüsseln?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '35708dc7-3c79-471c-aab5-56e7c3d750b6', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      'hI4YM93pp2DnXRTpTWdpo',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '53d78682-c51c-4b81-88ae-276d8413c376', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '1ylgBRu0p8GIvQXzY27EcS',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f7f653b5-d88b-4d47-a3a1-22d4432855dc', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Anschlag konnte nicht verhindert werden! Versuche es erneut.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '5acc229e-17b5-4952-99fb-820762a367f8', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Anschlag konnte nicht verhindert werden! Versuche es erneut.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '1bfc1d06-33b2-4b38-a2ef-cf9b82fe3039', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gute Arbeit du konntest den Code entschlüsseln. Laufe zum Rathaus.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '0450d1b5-7cf0-4abe-ae3a-9639a3a44215', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '63080306-d14a-46ee-bd1b-aac630a47bea',
    /* description */   'Du hast das Rathaus erreicht und bist auf der Suche nach der Bombe.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'deb6cf10-05e6-41ba-a312-34659959cc0c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '4e7EGkCzkA5dZiCmiVantv',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '645d8cac-0f78-4e06-a115-0f51daae14f0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der erste Teil der Bombe ist ein Drehmechanismus. Versuche durch die richtigen Drehungen den vierstelligen Code zu lösen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '8fbce97b-6289-43ab-8cb0-719194d52650', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '6V798WKwA6CcQRhFIBUdJ0',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ce288d71-818b-4f2d-8900-c048e3a5a093', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      's824wUmXI4r7SNBD2vCLn',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der eingegebene Code ist falsch. Schaue dir die Bombe noch einmal genau an.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '816e8c13-2351-4d8a-bd4c-b80937f568bd', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der eingegebene Code ist falsch. Schaue dir die Bombe noch einmal genau an.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '76774896-3b35-4fd6-804f-86d1563175c7', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Super, die Vorrichtung der Bombe kann nun abgenommen werden. Darunter kommen viele Drähte zum Vorschein. Welchen Draht musst du durchschneiden?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '6Mby4kEyxSlMp7R5yBCIHd',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '59e223cb-74b6-4872-9bdf-0636c924d923', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '3DTHGZruNgREMszqmloSnG',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '5c53a57b-36e7-45c2-8b4f-0d2f7b8c01f4', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der durchtrennte Draht war nicht mit dem Auslöser verbunden. Schaue dir das Bild noch einmal an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '91be47a9-7eeb-46c4-a0cf-8992a93e58fa', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der durchtrennte Draht war nicht mit dem Auslöser verbunden. Schaue dir das Bild noch einmal an!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '9028ec84-485e-4696-a316-a1bfdd1d9f61', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Das war knapp. Sehr gute Arbeit. Du konntest die Bombe entschärfen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Gehe zum Labor und suche nach DNA!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '85a6127c-c678-44ab-919a-658f5f6e8df5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '825f08d6-3dcd-440e-b599-06b03848c383',
    /* description */   'Gut gemacht. Du hast das Labor erreicht.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '995bc2f9-a744-4950-8ae4-4d51eacbf73c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Die Umgebung ist abgesucht. In der Umgebung befindet sich keine weitere Bombe.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '52b0273a-f765-4cfa-a03c-4a64dd47f618', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gute Arbeit. Du konntest die Zigarette einsammeln. Laufe nun ins Labor, um die Zigarette auf DNA zu untersuchen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '732dfd3e-fbbe-4481-bea6-101cd54c9af5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '21Hm9MTED93TeJBWSPdAG9',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '2861587e-aa37-4fa0-98d9-ec62f77601e0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '5pTFhUBgLofC3w50nsxc37',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '37482099-82c8-4465-aa26-dfc0f4228f1e', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Was möchtest du jetzt machen?',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '88ccf8bf-3336-45e9-990a-32000df11b3a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '5GyGVJ0GNtgMjacAyzayYz',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'd090087a-1d71-4510-9cb6-b8ded7ba7293', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '2nR8vrK6C7KK6wivwC0rhY',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '5fb9c2c6-dbe1-4426-8bb5-2a4d53ec8b2e', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Du bist ein hervorragender Ermittler. Du hast die richtige Person identifiziert, gehe zur Adresse des Täters.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b05c3959-46df-4e14-b5ba-92157a9f8bb5', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '7022612c-9e4c-4e3a-b482-3b976fa19e12',
    /* description */   'Du hast die Wohnung des Attentäters erreicht.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'c2770352-445b-46ff-9d87-fe2b9591655a', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Versuche es erneut.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '6a72359f-f41f-4c59-a553-63750dd9f9fd', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      'OvaJ1NyfBOLaxSjvvj2Uz',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7ehBM38E2VUW9H1CvfUtg',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'bde2792e-9e03-4ccb-a2bf-293524a90b76', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gut, dass dir das aufgefallen ist. Hier ein Bild von der Landkarte. Vielleicht findest du einen Hinweis, wo sich der Täter aufhält.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '497185e8-b6ee-4acc-8cde-410674938ed3', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '2pFUIXdqgSmZdCw3rX325A',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ef07b2a5-e765-4c95-83b5-7eacd5682c1c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Das stimmt leider nicht. Überprüfe die Landkarte nochmal genauer.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '88223449-b032-4833-ac07-d3a01e0f77ed', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7Ho1RVEFnkBbqRy9u85Voy',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'd0839282-1ff2-437f-95d5-5a9388136a93', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Schaue dir das Bild noch einmal an.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '599bd4db-fd99-4ae5-8556-551bf5893c12', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '2t1OM77nd5CX6sIw6YCoOx',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'de3a467e-3b76-4490-abb8-d0460dabc761', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Super, du konntest die Landkarte entschlüsseln. Gehe zur Fabrik.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '94d1c565-42a3-4df7-8c80-09c4754bfde0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ '1d3ce25b-1cc1-4c80-9f8c-10dfb6f01cb5',
    /* description */   'Gut gemacht. Du hast die Fabrik erreicht.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'de108962-b8ac-4229-a004-361f2dfae42c', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      'WCkq5SkhXbW8Itac9exVO',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'audio',
    /* asset_id */      '1WJ0ysKPFeL72yrOOxsbHA',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ac618a30-dcdb-46c1-8e74-0fd6299c22de', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'In der Wohnung der Verdächtigen konntest du diesen Zettel mitnehmen. Er scheint was mit dem Fall zu tun zu haben.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'edf819d7-5ddc-4741-bf92-197f111a80b0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '7KKi1v1gHRiJBOG8gkX2TQ',
    /* title */         '',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '995ce5aa-1940-4e7a-a671-c618a688c7f2', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'image',
    /* asset_id */      '69KgUlYrCzsbbZx6OJpboX',
    /* title */         '',
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
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '26278557-7d78-4307-8f57-a9737ff14ac9', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Sehr gute Arbeit. Der eingegebene Code ist korrekt. Die Tür ist nun offen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          '1957f07f-f161-4f6d-a045-e4d2893b246b', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   'Der Code ist nicht korrekt. Die Tür lässt sich nicht öffnen.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Neuigkeiten',
    /* ending */        NULL
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title, ending) 
VALUES (
    /* uuid */          'ccc62d58-2ce5-45e6-abaf-951dfc4527d0', 
    /* story_uuid */    'c9aaa81b-9b13-44ac-96cf-a8aa7c3a0099', 
    /* waypoint_uuid */ NULL,
    /* description */   '',
    /* media_type */    'video',
    /* asset_id */      '7oQ0nNljoHSoELwJ8ZB3JI',
    /* title */         '',
    /* ending */        'success'
);
/* >> Steps ************************************/

/* << Decisions ************************************/
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'dd9a68ea-f3db-4da7-974f-69bb6126c369',
    /* step_input_uuid */   '1bf23e66-1147-4ae7-9cfc-6f60d61a8492',
    /* step_output_uuid */  '50355d97-d8fd-41e3-91dd-b9d3ce1a5ae5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e9a756c4-0441-4e45-b605-7712efc17ac7',
    /* step_input_uuid */   '50355d97-d8fd-41e3-91dd-b9d3ce1a5ae5',
    /* step_output_uuid */  '0561bd71-8050-4960-b8bf-cd4174b70fb5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b2880ef4-334d-4747-84d2-c07f57ffdb54',
    /* step_input_uuid */   '0561bd71-8050-4960-b8bf-cd4174b70fb5',
    /* step_output_uuid */  'b0a7751a-beb4-45bb-a36f-1580bd4d9d69',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '29afeb0c-58cc-4a8b-ac23-8479d15f4282',
    /* step_input_uuid */   'b0a7751a-beb4-45bb-a36f-1580bd4d9d69',
    /* step_output_uuid */  '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'eee92f5c-f586-4387-b1e4-5d0a283a4385',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  '53d78682-c51c-4b81-88ae-276d8413c376',
    /* title */             'Ich brauche Hilfe beim entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '74314ba7-7c58-43d6-9cfc-0f1d8df8025e',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet an der Brücke statt'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e548ca74-e228-455b-96f2-dc4df1ea3b8f',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Industriegebiet statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'df137301-5d98-40ed-a2d1-2713454f667c',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet an der Autobahn statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '148ab760-05c2-4f48-85a9-12f50a294e41',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Bank statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '01996bb5-dff4-4c13-a2b6-ecf47c6e071f',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  '1bfc1d06-33b2-4b38-a2ef-cf9b82fe3039',
    /* title */             'Der Anschlag findet am Rathaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '783d672e-8ad0-44f0-8bbe-3fbe62003001',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Museum statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7ae50a37-e8c5-47b1-be91-8438c6816d4e',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Schwimmbad statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd86cc85f-f539-404c-886e-a8ab5ed7eac3',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Hochhaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '07b70b27-2c7f-41b0-9605-06d6e8433c38',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Oper statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'be6fa0d8-6cbc-4c31-80b8-5be0821a868a',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet in der Uni statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9e016d3e-5321-4189-a112-a61c96172f56',
    /* step_input_uuid */   '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* step_output_uuid */  'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* title */             'Der Anschlag findet im Fitnessstudio statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'eb1fcd11-bd38-4087-8a4d-2545d79f5e49',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet an der Brücke statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd1f60d43-675e-48ca-9853-bac92a4e3836',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet im Industriegebiet statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '95b29c69-b519-46fb-bc7b-76ce2f6aff7b',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet an der Autobahn statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a60cfa35-3b7b-4d8c-b6d8-25b40f4f633c',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet in der Bank statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e15985a5-57ce-4c4e-bc37-3eac67e87b0c',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '1bfc1d06-33b2-4b38-a2ef-cf9b82fe3039',
    /* title */             'Der Anschlag findet am Rathaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '13b387fe-3d70-4abd-bc7f-3fae61ca1897',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet im Museum statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2d50deaa-63b8-4f65-b08d-985cd19a2343',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet im Schwimmbad statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4733c227-b056-48fc-8e27-72a612aecbb5',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet im Hochhaus statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1cbce018-163c-4afb-a885-d6c395df2cff',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet in der Oper statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '45d0cef7-39b4-4977-81e3-143340d81742',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet in der Uni statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e1d4c719-0898-440c-adef-21760c012667',
    /* step_input_uuid */   '53d78682-c51c-4b81-88ae-276d8413c376',
    /* step_output_uuid */  '5acc229e-17b5-4952-99fb-820762a367f8',
    /* title */             'Der Anschlag findet im Fitnessstudio statt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c980b8e9-dc98-4675-b65a-ee7c2b574b81',
    /* step_input_uuid */   '5acc229e-17b5-4952-99fb-820762a367f8',
    /* step_output_uuid */  '53d78682-c51c-4b81-88ae-276d8413c376',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0357de59-abf4-4dd4-a82f-0c75044cb4d6',
    /* step_input_uuid */   'f7f653b5-d88b-4d47-a3a1-22d4432855dc',
    /* step_output_uuid */  '35708dc7-3c79-471c-aab5-56e7c3d750b6',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd1620754-eeb7-4ea3-bef7-f205b04161b7',
    /* step_input_uuid */   '1bfc1d06-33b2-4b38-a2ef-cf9b82fe3039',
    /* step_output_uuid */  '0450d1b5-7cf0-4abe-ae3a-9639a3a44215',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '33c5c0e5-d385-4e20-a16b-a048864ac178',
    /* step_input_uuid */   '0450d1b5-7cf0-4abe-ae3a-9639a3a44215',
    /* step_output_uuid */  'deb6cf10-05e6-41ba-a312-34659959cc0c',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c112161f-8568-4f79-a25a-177b4dc14879',
    /* step_input_uuid */   'deb6cf10-05e6-41ba-a312-34659959cc0c',
    /* step_output_uuid */  '645d8cac-0f78-4e06-a115-0f51daae14f0',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '293a4a98-76f1-485a-a533-91bf76470f73',
    /* step_input_uuid */   '645d8cac-0f78-4e06-a115-0f51daae14f0',
    /* step_output_uuid */  '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '38125bce-06e9-4515-9b21-81153a8a54c3',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* title */             'Ich brauche Hilfe beim entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '059f374a-503f-4801-8fce-29c095147514',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '14 / 2 / 4 / 10'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a44a2006-e242-47ff-8dca-8b7abb8376f4',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '14 / 4 / 6 / 11'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0ebe5dd8-b4c7-48b8-8261-d36dea820740',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '14 / 7 / 4 / 5'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7c1a2bfd-89e9-4489-a07e-d7e49bb1b6ef',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '13 / 2 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6198596a-4114-4dcd-876b-5ba4e53adc93',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '16 / 5 / 8 / 12'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f35614a3-52a1-46b4-a4cc-ca2c45a3995f',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '7 / 3 / 7 / 14'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '151a73fe-b37c-434e-88dd-f9ce4bb84e2a',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '14 / 2 / 4 / 10'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '89201174-f237-4f02-ad58-6ca0a4aab8af',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '76774896-3b35-4fd6-804f-86d1563175c7',
    /* title */             '14 / 2 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1a58a688-c182-4257-8515-d00ae1b5f7c1',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '15 / 3 / 5 / 10'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8b8efe79-09b6-4f32-ad98-b350a175d839',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '6 / 6 / 2 / 7'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '51ef8e25-eddc-4cea-81ab-2503abc30185',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '14 / 3 / 4 / 12'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '53798a69-735f-412e-8043-c6e75b40c290',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '13 / 1 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '85ee483c-39d8-452b-8be7-ad319da57add',
    /* step_input_uuid */   '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* step_output_uuid */  '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* title */             '1 / 2 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '34cf5ffd-4e5e-4b8e-90fd-e83d5534c31e',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '14 / 2 / 4 / 10'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7f4016a2-f6f8-48ce-88b3-729d5435d2fb',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '14 / 4 / 6 / 11'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f2b57a8f-ef33-44c0-b79b-9a875912bb93',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '14 / 7 / 4 / 5'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3ea36c99-63bf-4a9b-bdc1-26482f66b04e',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '13 / 2 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd4bc94d1-9c8a-4167-be17-4edf0ab9ff73',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '16 / 5 / 8 / 12'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0b36af12-31fa-4543-ab96-2a5951f13926',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '7 / 3 / 7 / 14'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9c33423d-2ea8-489a-8935-caa24ace15b6',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '14 / 2 / 4 / 10'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bf474d33-2cab-47e5-8ccf-378c1a1700aa',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  '76774896-3b35-4fd6-804f-86d1563175c7',
    /* title */             '14 / 2 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '78de096c-0a08-4982-b3cc-9d633bd5e38c',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '15 / 3 / 5 / 10'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a42c88d7-8231-4739-948a-c9f6714f8a8f',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '6 / 6 / 2 / 7'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '634915cc-fe82-4987-95d6-32b566e62167',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '14 / 3 / 4 / 12'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '10f357ed-74a3-460a-bca9-44286496fb37',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '13 / 1 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '91de8ad7-f9f0-4f22-a825-43d271ac9c49',
    /* step_input_uuid */   'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* step_output_uuid */  'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* title */             '1 / 2 / 4 / 9'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a620a30d-3ed9-4b09-96ef-841c4cd2ecd8',
    /* step_input_uuid */   'f95ad37b-d7eb-4c30-a203-67b2dc0f50fc',
    /* step_output_uuid */  'ce288d71-818b-4f2d-8900-c048e3a5a093',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7f5b19a1-35df-4e1e-a377-137e2d3c1dc9',
    /* step_input_uuid */   '816e8c13-2351-4d8a-bd4c-b80937f568bd',
    /* step_output_uuid */  '8fbce97b-6289-43ab-8cb0-719194d52650',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c92cd32d-ca3d-457c-9b4f-c2222ad87416',
    /* step_input_uuid */   '76774896-3b35-4fd6-804f-86d1563175c7',
    /* step_output_uuid */  'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'fd7a1a97-9ab0-43fe-9905-7ec3c01a406c',
    /* step_input_uuid */   'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* step_output_uuid */  '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* title */             'Ich brauche Hilfe beim entschlüsseln'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '897e6b58-e68a-4d99-adc9-42fef014ca16',
    /* step_input_uuid */   'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* step_output_uuid */  '91be47a9-7eeb-46c4-a0cf-8992a93e58fa',
    /* title */             '1'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cc34fc8a-f542-4093-96ce-71d1fd901328',
    /* step_input_uuid */   'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* step_output_uuid */  '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* title */             '2'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd2e5d43b-b16c-43b2-b5b9-d9673aa41f48',
    /* step_input_uuid */   'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* step_output_uuid */  '91be47a9-7eeb-46c4-a0cf-8992a93e58fa',
    /* title */             '3'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '10948ff8-6bb0-435a-8be6-f11335042232',
    /* step_input_uuid */   'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* step_output_uuid */  '91be47a9-7eeb-46c4-a0cf-8992a93e58fa',
    /* title */             '4'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2431a5fc-ccc2-4e11-80b2-8f66762beacb',
    /* step_input_uuid */   'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* step_output_uuid */  '91be47a9-7eeb-46c4-a0cf-8992a93e58fa',
    /* title */             '5'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd6d3bfa1-4f65-4abf-a6b7-23a7002800d6',
    /* step_input_uuid */   '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* step_output_uuid */  '5c53a57b-36e7-45c2-8b4f-0d2f7b8c01f4',
    /* title */             '1'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a34c3bb0-cd4c-477f-98f6-e9d433c79fc6',
    /* step_input_uuid */   '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* step_output_uuid */  '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* title */             '2'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '50441a2b-6404-4859-b0bc-bff390386ff8',
    /* step_input_uuid */   '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* step_output_uuid */  '5c53a57b-36e7-45c2-8b4f-0d2f7b8c01f4',
    /* title */             '3'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b8a2fc8e-3a23-4242-a516-535c12eb5bc3',
    /* step_input_uuid */   '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* step_output_uuid */  '5c53a57b-36e7-45c2-8b4f-0d2f7b8c01f4',
    /* title */             '4'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8289bf84-58a6-4913-95a3-c2ed2a50ebea',
    /* step_input_uuid */   '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* step_output_uuid */  '5c53a57b-36e7-45c2-8b4f-0d2f7b8c01f4',
    /* title */             '5'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '02a4a1cf-d713-4c53-92a1-a6f897fd84eb',
    /* step_input_uuid */   '5c53a57b-36e7-45c2-8b4f-0d2f7b8c01f4',
    /* step_output_uuid */  '59e223cb-74b6-4872-9bdf-0636c924d923',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '691366fc-4447-46ed-b665-35b93d515576',
    /* step_input_uuid */   '91be47a9-7eeb-46c4-a0cf-8992a93e58fa',
    /* step_output_uuid */  'e4a7dc89-9d06-43b8-b0c4-26364c2f2f3a',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '09d80b2e-a10a-4366-adc5-5760cb3afe85',
    /* step_input_uuid */   '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bombe auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c6fffac9-9cb6-4294-8862-84d5953cfdd7',
    /* step_input_uuid */   '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* step_output_uuid */  '995bc2f9-a744-4950-8ae4-4d51eacbf73c',
    /* title */             'Ich suche in der Umgebung  nach einer weiteren Bombe'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '02f1037c-1b38-4999-a1a9-edb4a8f63f39',
    /* step_input_uuid */   '995bc2f9-a744-4950-8ae4-4d51eacbf73c',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bome auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3e7f7200-bd7d-46c8-921b-67328e13d898',
    /* step_input_uuid */   '995bc2f9-a744-4950-8ae4-4d51eacbf73c',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich suche nach einer Überwachungskamera in der Umgebung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '672a4e51-307a-4638-b252-9ea7b82a9f71',
    /* step_input_uuid */   '9028ec84-485e-4696-a316-a1bfdd1d9f61',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich suche nach einer Überwachungskamera in der Umgebung'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '245d5088-40be-4a3f-8055-11f386659170',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '52b0273a-f765-4cfa-a03c-4a64dd47f618',
    /* title */             'Mir fällt auf, dass der Täter eine Zigarette weg schmeißt'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1de50145-b915-40b1-92f1-1f0b2f2c062a',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* title */             'Mir fällt auf, dass der Täter eine Pistole hat'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3ce3c4e3-11ca-4f36-81aa-0e23821e6701',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* title */             'Mir fällt auf, dass der Täter telefoniert'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9af23bb4-638c-4811-81d1-191e50ae8fe5',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* title */             'Mir fällt auf, dass ein Komplize am Bildrand steht'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '292dfe1a-f1e3-49ad-8c6d-77834e5c9f83',
    /* step_input_uuid */   '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* step_output_uuid */  '37482099-82c8-4465-aa26-dfc0f4228f1e',
    /* title */             'Mir fällt nichts wichtiges auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3c6de9ae-6580-492f-9240-fb80ac5ca1ce',
    /* step_input_uuid */   '52b0273a-f765-4cfa-a03c-4a64dd47f618',
    /* step_output_uuid */  '85a6127c-c678-44ab-919a-658f5f6e8df5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7bca3bd7-2679-4e55-92dc-5e614791e320',
    /* step_input_uuid */   'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* step_output_uuid */  '85a6127c-c678-44ab-919a-658f5f6e8df5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2202cf24-72ce-490d-89fb-bfd86a215821',
    /* step_input_uuid */   '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bome auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c5a13944-8c84-426a-acf2-4552fea1ff20',
    /* step_input_uuid */   '732dfd3e-fbbe-4481-bea6-101cd54c9af5',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich schaue mir das Video noch einmal an'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'af4a34e8-1503-40a6-a159-aef7e1ca8dd7',
    /* step_input_uuid */   '37482099-82c8-4465-aa26-dfc0f4228f1e',
    /* step_output_uuid */  'f89ea2c8-a1b5-4ffc-b4cd-71733c068b1a',
    /* title */             'Ich überprüfe die Bome auf DNA'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '70ea7b2a-6e2c-49d4-ab96-518351a17f98',
    /* step_input_uuid */   '37482099-82c8-4465-aa26-dfc0f4228f1e',
    /* step_output_uuid */  '2861587e-aa37-4fa0-98d9-ec62f77601e0',
    /* title */             'Ich schaue mir das Video noch einmal an'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '01e73192-b74b-40f9-befc-b28e4c34a833',
    /* step_input_uuid */   '85a6127c-c678-44ab-919a-658f5f6e8df5',
    /* step_output_uuid */  '88ccf8bf-3336-45e9-990a-32000df11b3a',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '02da77f1-274a-4c58-b991-1024edb242ab',
    /* step_input_uuid */   '88ccf8bf-3336-45e9-990a-32000df11b3a',
    /* step_output_uuid */  'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '765b0760-f2ce-41bf-ad06-09a3c2863f43',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Person A ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '79d7ff03-83f3-467c-9e9d-63b805ac1ce5',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Person B ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd4277a55-e456-4347-82a5-2022f9c89467',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  '5fb9c2c6-dbe1-4426-8bb5-2a4d53ec8b2e',
    /* title */             'Person C ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e3396fa9-91d6-4245-8b3b-9da8af7f5fe9',
    /* step_input_uuid */   'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* step_output_uuid */  'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* title */             'Person D ist der Täter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '46058052-c391-44e4-b18a-f696f51ba3d6',
    /* step_input_uuid */   'c2770352-445b-46ff-9d87-fe2b9591655a',
    /* step_output_uuid */  'd090087a-1d71-4510-9cb6-b8ded7ba7293',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3448ac20-02c1-4a1e-ae60-986b0dc716e5',
    /* step_input_uuid */   '5fb9c2c6-dbe1-4426-8bb5-2a4d53ec8b2e',
    /* step_output_uuid */  'b05c3959-46df-4e14-b5ba-92157a9f8bb5',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '643e7659-f2f7-47b0-b9cc-2ad3d5d8e8a8',
    /* step_input_uuid */   'b05c3959-46df-4e14-b5ba-92157a9f8bb5',
    /* step_output_uuid */  '6a72359f-f41f-4c59-a553-63750dd9f9fd',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'eb2c1ffe-52a7-48a9-a68c-c3fd83912f76',
    /* step_input_uuid */   '6a72359f-f41f-4c59-a553-63750dd9f9fd',
    /* step_output_uuid */  'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7fc4276e-6e65-48e6-bb26-5327dc41405d',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* title */             'Ich brauche Hilfe'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '70569fa3-d01c-42fd-9bb5-2fc5af5e0efd',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  '599bd4db-fd99-4ae5-8556-551bf5893c12',
    /* title */             'Mir fallen die Zahlen auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '129ecb04-9ef5-4d14-b83e-8950243ae22d',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt die Unordnung auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7b4eed16-e066-475d-9351-1ba81ccbd9a7',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt ein Glas mit Lippenstift auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2d301f70-f77a-4b77-b8a7-819b34d72e33',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'bde2792e-9e03-4ccb-a2bf-293524a90b76',
    /* title */             'Die Landkarte'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '8bebe431-fbd5-4fcd-8c9b-0e9310d1d64a',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt das Smartphone auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4c2ad955-1559-413b-a975-1963350574bd',
    /* step_input_uuid */   'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt eine Pistole auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '9ada1c11-6af3-4a93-bf47-ba4545f10300',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  '599bd4db-fd99-4ae5-8556-551bf5893c12',
    /* title */             'Mir fallen die Zahlen auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd16ca5a7-6455-439e-a763-b2aba53dc393',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt die Unordnung auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '88cd1650-cc5e-45d7-8350-d3d5d3fd6a21',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt ein Glas mit Lippenstift auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '97d8a05d-0d5a-40ef-89ac-d9a49054d858',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'bde2792e-9e03-4ccb-a2bf-293524a90b76',
    /* title */             'Die Landkarte'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f2aacf48-c19b-4756-b24c-ac524044bbaa',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt das Smartphone auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e89a39fc-f914-4e39-b208-177e997cd751',
    /* step_input_uuid */   '88223449-b032-4833-ac07-d3a01e0f77ed',
    /* step_output_uuid */  'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* title */             'Mir fällt eine Pistole auf'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '93c67fe1-d0ff-439f-9d92-997cb25d0234',
    /* step_input_uuid */   'd0839282-1ff2-437f-95d5-5a9388136a93',
    /* step_output_uuid */  'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'c13f3899-8b80-42cc-a626-1881ba8aee78',
    /* step_input_uuid */   '599bd4db-fd99-4ae5-8556-551bf5893c12',
    /* step_output_uuid */  'b8e5c48b-2f41-4e1f-b032-07e1ffc93fc7',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '06da23b8-ea03-4ba9-b79e-a476f2ab849b',
    /* step_input_uuid */   'bde2792e-9e03-4ccb-a2bf-293524a90b76',
    /* step_output_uuid */  '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'b13448b3-d4ed-4480-9511-07c3d5d4010a',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'ef07b2a5-e765-4c95-83b5-7eacd5682c1c',
    /* title */             'Der Täter versteckt sich im Schwimmbad'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2d8b3870-fb68-4c33-9821-fc62a9bf7ae0',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'ef07b2a5-e765-4c95-83b5-7eacd5682c1c',
    /* title */             'Der Täter versteckt sich im Hotel'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'a7ca0220-8569-472d-abc0-18ff2dfb27f8',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'ef07b2a5-e765-4c95-83b5-7eacd5682c1c',
    /* title */             'Der Täter versteckt sich in der Bibliothek'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '1181f78a-ba20-46cb-a45b-1a524fddde4b',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'de3a467e-3b76-4490-abb8-d0460dabc761',
    /* title */             'Der Täter versteckt sich in der Fabrik'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f7966c17-1633-4ad7-8c43-40f5a30bbd2e',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'ef07b2a5-e765-4c95-83b5-7eacd5682c1c',
    /* title */             'Der Täter versteckt sich in der Schule'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '7f30b075-d47e-46cc-ad0f-39dd8879e684',
    /* step_input_uuid */   '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* step_output_uuid */  'ef07b2a5-e765-4c95-83b5-7eacd5682c1c',
    /* title */             'Der Täter versteckt sich in der Lagerhalle'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '0e8230e2-029c-457f-a0f6-4cc392a7afc0',
    /* step_input_uuid */   'ef07b2a5-e765-4c95-83b5-7eacd5682c1c',
    /* step_output_uuid */  '497185e8-b6ee-4acc-8cde-410674938ed3',
    /* title */             ''
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '07aa4dac-2187-49e0-a95c-dfa129e1ac9f',
    /* step_input_uuid */   'de3a467e-3b76-4490-abb8-d0460dabc761',
    /* step_output_uuid */  '94d1c565-42a3-4df7-8c80-09c4754bfde0',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4f8aca60-ae13-4393-b2d8-fc3613af605a',
    /* step_input_uuid */   '94d1c565-42a3-4df7-8c80-09c4754bfde0',
    /* step_output_uuid */  'de108962-b8ac-4229-a004-361f2dfae42c',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '71f2d095-e303-4f56-afc6-3e95ec64cea9',
    /* step_input_uuid */   'de108962-b8ac-4229-a004-361f2dfae42c',
    /* step_output_uuid */  'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f9f6b310-ae0e-47b7-ac4d-c1821d8ae6a0',
    /* step_input_uuid */   'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             'Ich kenne den Code nicht'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '76c99e29-df6d-435b-b45e-b917c92e0e54',
    /* step_input_uuid */   'f4b76e51-13fb-4ebe-a5bd-8a56d13df8d6',
    /* step_output_uuid */  'f4258eff-b283-49ab-9322-45185b29d51f',
    /* title */             'Ich kenne den Code'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'aa3ad189-0299-4097-8d4e-0f6d65e1244c',
    /* step_input_uuid */   'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* step_output_uuid */  'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5fc4f707-32ce-4b3d-9ecf-0f730da4f9d2',
    /* step_input_uuid */   'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* step_output_uuid */  '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* title */             'Ich kenne den Code nicht'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '6472b92e-75da-4d09-9b06-9600f2873886',
    /* step_input_uuid */   'edf819d7-5ddc-4741-bf92-197f111a80b0',
    /* step_output_uuid */  'f4258eff-b283-49ab-9322-45185b29d51f',
    /* title */             'Ich kenne den Code'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd0120651-bf98-4843-bff6-603f01a2dab8',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '473'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'bbba4c66-878b-494d-8ad5-cce3bf7663a9',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '771'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'f1fca783-f4aa-463f-8006-d35c9f565193',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '907'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd5ca1945-12bc-495b-b42d-799495d50029',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '022'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '25b6faf7-4d72-48dd-8a82-620628b435bc',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '762'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3a4e9606-447d-4668-843d-0788f820aa62',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '981'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e779b251-9be6-4927-ae6a-1aaba68c24cf',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '728'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '787b84c3-d0ef-4234-b07f-ce9d7bc46e39',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '816'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'ff632c6e-0802-4eb9-aaa3-c61fbc800799',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '943'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '428019c5-93f9-40a9-9fd5-67a81cb8485d',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '263'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3376e5a6-cb60-4ca0-b64c-a8de3e28a110',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '817'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '33416105-8399-4c49-a344-38f91d429117',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '26278557-7d78-4307-8f57-a9737ff14ac9',
    /* title */             '127'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'd1fa6d65-7c61-4ea6-8f0c-0c085c5352ca',
    /* step_input_uuid */   '995ce5aa-1940-4e7a-a671-c618a688c7f2',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '090'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3964fd20-dbc8-4d5d-9236-a0ca6389bd58',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '473'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '488033c3-8982-4567-bfb3-1f78d8ccb878',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '771'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'cd9b16c1-a75a-4048-b9b2-e68aeb805581',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '907'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '07298e19-d175-4d9c-aa64-d6ef7b062919',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '022'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '07eca21e-2fe7-4006-a7a6-b100239e7bf6',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '762'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '49988d45-e87e-4c2e-b7d9-a92db5c2d114',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '981'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2d3f3937-0175-4e19-bb0c-58d52ae6e7f8',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '728'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'e63520b5-2b50-4ab1-9ac7-40a2e1598aa8',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '816'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '92673016-fbf8-40c2-8651-fb86a032203b',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '943'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '89f54ee8-9861-4a8c-bb58-83ff638b7c40',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '263'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '2346992f-49fa-43fd-91aa-b187adfea606',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '817'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '3c81ab88-4ec7-4561-86ec-bd8c25a99163',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '26278557-7d78-4307-8f57-a9737ff14ac9',
    /* title */             '127'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '4373f027-a20f-4cf4-a8fd-3ae037bc52aa',
    /* step_input_uuid */   'f4258eff-b283-49ab-9322-45185b29d51f',
    /* step_output_uuid */  '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* title */             '090'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              'fa9b9130-7734-4f68-ba4e-8bf526b9aca8',
    /* step_input_uuid */   '1957f07f-f161-4f6d-a045-e4d2893b246b',
    /* step_output_uuid */  'ac618a30-dcdb-46c1-8e74-0fd6299c22de',
    /* title */             ''
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '55401fba-5e32-435b-b4db-68e0e0a81cbb',
    /* step_input_uuid */   '26278557-7d78-4307-8f57-a9737ff14ac9',
    /* step_output_uuid */  'ccc62d58-2ce5-45e6-abaf-951dfc4527d0',
    /* title */             ''
);
/* >> Decisions ************************************/
