/* << MUSEUM HEIST ************************************/
INSERT INTO stories (uuid, description, title, asset_id, active) 
VALUES (
    /* uuid */          '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* description */   'Die Geschichte beginnt mit einem spektakulären Diebstahl im renommierten Museum "Kunst und Kultur". In einer stürmischen Nacht gelang es einem unbekannten Dieb, unbemerkt in das Museum einzudringen und ein wertvolles Kunstwerk von unschätzbarem Wert zu stehlen.', 
    /* title */         'Mysteriöse Spuren', 
    /* asset_id */      '5NLEPQsYuaOsr3hMeotJfZ',
    /* active */        TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '4fa1b998-bc77-4c8a-bc50-af8288581ffa', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '4fa1b998-bc77-4c8a-bc50-af8288581ffb', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '4fa1b998-bc77-4c8a-bc50-af8288581ffc', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '4fa1b998-bc77-4c8a-bc50-af8288581ffd', 
    /* place_type */        'random', 
    /* place_override */    TRUE
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f1', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'Du hast eine neue Audionachricht von deinem Kollegen erhalten. Höre sie dir an und folge der ersten Anweisung.',
    /* media_type */    'audio',
    /* asset_id */      '6Qkm11eg1tgqu1aJEFExKi',
    /* title */         'Aufregende Nachricht'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffa',
    /* description */   'Du bist am Tatort angekommen. Sieh dir die Einzelheiten im Video an.',
    /* media_type */    'video',
    /* asset_id */      '3WHnU7SCQdr4jRZ781LVAk',
    /* title */         'Der Tatort'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f9', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'Achte auf die Details im Video!',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Dein Tipp'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'Die Fingerabdrücke vom Tatort sind gesichert und werden ins Labor geschickt. Du hast eine neue Audionachricht von deinem Kollegen erhalten. Höre sie dir an und folge der ersten Anweisung.',
    /* media_type */    'audio',
    /* asset_id */      '3bUfBK9VECS0hBRBKeg2RA',
    /* title */         'Neuigkeiten'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffb',
    /* description */   'Untersuche das Fahrzeug gründlich auf mögliche Spuren oder Beweise, die auf den Diebstahl hinweisen könnten. Du kannst dazu ein spezielles DNA-Analysenset verwenden, das in deinem Ermittlungsset enthalten ist. Sei gründlich und achte auf kleinste Details, um keine wichtigen Hinweise zu übersehen!',
    /* media_type */    'video',
    /* asset_id */      '6OL5xzmG5o7olCGSphaYQx',
    /* title */         'Beweissammlung'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f5', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'Nachdem du die Beweise und Spuren am Tatort und im verdächtigen Fahrzeug gesammelt hast, musst du sie schnell in das Forensiklabor bringen, um sie genauer zu analysieren.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Die Beweisanalyse'
);


INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffc',
    /* description */   'Das Laborpersonal hat Fingerabdrücke, DNA-Proben und Faserspuren analysiert. Wir haben einen Treffer.',
    /* media_type */    'image',
    /* asset_id */      '74GqGc6raMnMByXTeEG16A',
    /* title */         'Forensiklabor'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f7', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'Verständige sofort die Polizei und sei innerhalb von 10 Minuten in der Autowerkstatt. Achte auf die Zeit, denn der Täter versucht zu fliehen und muss schnell gefasst werden.',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'Kunstliebhaber gefunden'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f8', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffd',
    /* description */   'Du hast es rechtzeitig zum Festnahmeort geschafft. Die Polizei wird den Täter jetzt verhaften.',
    /* media_type */    'image',
    /* asset_id */      '5wRyGrBPwwQtaagIljrXXz',
    /* title */         'Festnahme'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc1',
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f1',
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc2', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2',
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3', 
    /* title */             'Weiter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc8', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2',
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f9', 
    /* title */             'Ich brauche einen Tipp'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc3', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4', 
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc4', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f5', 
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc5', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f5', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6',
    /* title */             'Alles klar'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc6', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f7', 
    /* title */             'Weiter'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc7', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f7', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f8', 
    /* title */             'Alles klar'
);

/* >> MUSEUM HEIST ************************************/