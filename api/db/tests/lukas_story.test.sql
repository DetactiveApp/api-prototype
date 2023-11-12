INSERT INTO stories (uuid, description, title, asset_id, active) 
VALUES (
    /* uuid */          'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* description */   'Finde deine Dokumente.', 
    /* title */         'Die fabelhafte Story von Lukas :)', 
    /* asset_id */      '',
    /* active */        TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '0690b1ee-729d-11ee-b962-0242ac120002', 
    /* place_type */        'restaurant', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              'fd119854-729c-11ee-b962-0242ac120002', 
    /* place_type */        'park', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '0dcbfd9c-729d-11ee-b962-0242ac120002', 
    /* place_type */        'garden', 
    /* place_override */    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    /* uuid */              '13efa9d0-729d-11ee-b962-0242ac120002', 
    /* place_type */        'harbor', 
    /* place_override */    TRUE
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '1c253264-729d-11ee-b962-0242ac120002', 
    /* story_uuid */    'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* waypoint_uuid */ NULL,
    /* description */   'Du bist auf einer Reise und deine Dokumente sind nicht da. Du überlegst, wo du sie verloren haben könntest.',
    /* media_type */    NULL,
    /* asset_id */      '',
    /* title */         'Der Fall'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '27180a02-729d-11ee-b962-0242ac120002', 
    /* story_uuid */    'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* waypoint_uuid */ '0690b1ee-729d-11ee-b962-0242ac120002',
    /* description */   'Das Restaurant hat geschlossen.',
    /* media_type */    NULL,
    /* asset_id */      '',
    /* title */         'Das Restaurant'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '2c091344-729d-11ee-b962-0242ac120002', 
    /* story_uuid */    'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* waypoint_uuid */ 'fd119854-729c-11ee-b962-0242ac120002',
    /* description */   'Deine Dokumente sind nicht hier.',
    /* media_type */    NULL,
    /* asset_id */      '',
    /* title */         'Der Park'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '32c20010-729d-11ee-b962-0242ac120002', 
    /* story_uuid */    'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* waypoint_uuid */ '0dcbfd9c-729d-11ee-b962-0242ac120002',
    /* description */   'Deine Dokumente sind nicht hier.',
    /* media_type */    NULL,
    /* asset_id */      '',
    /* title */         'Der See'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '398704d6-729d-11ee-b962-0242ac120002', 
    /* story_uuid */    'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* waypoint_uuid */ '0dcbfd9c-729d-11ee-b962-0242ac120002',
    /* description */   'Vielleicht sollte ich zum Hafen gehen.',
    /* media_type */    NULL,
    /* asset_id */      '',
    /* title */         'Was jetzt?'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '3ff05624-729d-11ee-b962-0242ac120002', 
    /* story_uuid */    'cc9ca132-729c-11ee-b962-0242ac120002', 
    /* waypoint_uuid */ '13efa9d0-729d-11ee-b962-0242ac120002',
    /* description */   'Glückwunsch, du hast deine Dokumente gefunden! Gehe nun in den Detactive Store und mach mich reich.',
    /* media_type */    NULL,
    /* asset_id */      '',
    /* title */         'Ich hab die sie!'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '5bd82344-729d-11ee-b962-0242ac120002', 
    /* step_input_uuid */   '1c253264-729d-11ee-b962-0242ac120002', 
    /* step_output_uuid */  '27180a02-729d-11ee-b962-0242ac120002', 
    /* title */             'Ich gehe zum Restaurant'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '60f1de1a-729d-11ee-b962-0242ac120002', 
    /* step_input_uuid */   '1c253264-729d-11ee-b962-0242ac120002', 
    /* step_output_uuid */  '2c091344-729d-11ee-b962-0242ac120002', 
    /* title */             'Ich gehe in den Park'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '655bf65c-729d-11ee-b962-0242ac120002', 
    /* step_input_uuid */   '1c253264-729d-11ee-b962-0242ac120002', 
    /* step_output_uuid */  '32c20010-729d-11ee-b962-0242ac120002', 
    /* title */             'Ich gehe zum See'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '70b92f06-729d-11ee-b962-0242ac120002', 
    /* step_input_uuid */   '32c20010-729d-11ee-b962-0242ac120002', 
    /* step_output_uuid */  '398704d6-729d-11ee-b962-0242ac120002', 
    /* title */             'Alles klar.'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '74b1195c-729d-11ee-b962-0242ac120002', 
    /* step_input_uuid */   '398704d6-729d-11ee-b962-0242ac120002', 
    /* step_output_uuid */  '3ff05624-729d-11ee-b962-0242ac120002', 
    /* title */             'Alles klar.'
);