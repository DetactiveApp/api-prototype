/* USERS */
INSERT INTO users (uuid) VALUES ('87c44130-af78-4c38-9d58-63d5266bde4a');

/* << MUSEUM HEIST ************************************/
INSERT INTO stories (uuid, description, title, asset_id, active) 
VALUES (
    /* uuid */          '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* description */   'story.museumheist.description', 
    /* title */         'story.museumheist.title', 
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
    /* description */   'story.museumheist.step.thrillingnews.description',
    /* media_type */    'audio',
    /* asset_id */      '6Qkm11eg1tgqu1aJEFExKi',
    /* title */         'story.museumheist.step.thrillingnews.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffa',
    /* description */   'story.museumheist.step.gotomuseum.description',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'story.museumheist.step.gotomuseum.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'story.museumheist.step.examinecrimescene.description',
    /* media_type */    'video',
    /* asset_id */      '3WHnU7SCQdr4jRZ781LVAk',
    /* title */         'story.museumheist.step.examinecrimescene.description'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'story.museumheist.step.suspiciouscarnews.description',
    /* media_type */    'audio',
    /* asset_id */      '3bUfBK9VECS0hBRBKeg2RA',
    /* title */         'story.museumheist.step.suspiciouscarnews.description'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f5', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffb',
    /* description */   'story.museumheist.step.gotosuspiciouscar.description',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'story.museumheist.step.gotosuspiciouscar.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'story.museumheist.step.collectevidence.description',
    /* media_type */    'video',
    /* asset_id */      '6OL5xzmG5o7olCGSphaYQx',
    /* title */         'story.museumheist.step.collectevidence.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f7', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffc',
    /* description */   'story.museumheist.step.gotoforensicslab.description',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'story.museumheist.step.gotoforensicslab.title'
);


INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f8', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'story.museumheist.step.forensicresults.description',
    /* media_type */    'image',
    /* asset_id */      '74GqGc6raMnMByXTeEG16A',
    /* title */         'story.museumheist.step.forensicresults.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f9', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ NULL,
    /* description */   'story.museumheist.step.artloverfound.description',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'story.museumheist.step.artloverfound.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    /* uuid */          '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e310', 
    /* story_uuid */    '9e125477-3a9e-4d39-ae63-5a09a50b614a', 
    /* waypoint_uuid */ '4fa1b998-bc77-4c8a-bc50-af8288581ffd',
    /* description */   'story.museumheist.step.gotoautorepairshop.description',
    /* media_type */    NULL,
    /* asset_id */      NULL,
    /* title */         'story.museumheist.step.gotoautorepairshop.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc1', 
    /* step_input_uuid */   NULL, 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2', 
    /* title */             'story.museumheist.step.thrillingnews.decision.acceptgotomuseum.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc2', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f2', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3', 
    /* title */             'story.museumheist.step.gotomuseum.decision.acceptentercrimescene.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc3', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f3', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4', 
    /* title */             'story.museumheist.step.examinecrimescene.decision.acceptleavecrimescene.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc4', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f4', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f5', 
    /* title */             'story.museumheist.step.suspiciouscarnews.decision.acceptgotosuspiciouscar.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc5', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f5', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6',
    /* title */             'story.museumheist.step.gotosuspiciouscar.decision.acceptcollectevidence.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc6', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f7', 
    /* title */             'story.museumheist.step.collectevidence.decision.acceptgotoforensiclab.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc7', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f7', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f8', 
    /* title */             'story.museumheist.step.gotoforensicslab.decision.acceptshowforensicresults.title'
);


INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc8', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f8', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f9', 
    /* title */             'story.museumheist.step.gotoforensicslab.decision.acceptdnaanalysis.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2adc9', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f9', 
    /* step_output_uuid */  '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e310', 
    /* title */             'story.museumheist.step.artloverfound.decision.acceptgotoautorepairshop.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    /* uuid */              '27d8e03d-c025-4e7d-9c31-eb38d5e2ad10', 
    /* step_input_uuid */   '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e310', 
    /* step_output_uuid */  NULL, 
    /* title */             'story.museumheist.step.gotoautorepairshop.decision.arrest.title'
);
/* >> MUSEUM HEIST ************************************/