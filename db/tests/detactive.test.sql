/* << MUSEUM HEIST ************************************/
INSERT INTO stories (uuid, description, title, asset_id, active) 
VALUES (
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    'story.museumheist.description',
    'story.museumheist.title',
    '5NLEPQsYuaOsr3hMeotJfZ',
    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    UNHEX('4fa1b998bc774c8abc50af8288581ffa'),
    'random',
    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    UNHEX('4fa1b998bc774c8abc50af8288581ffb'),
    'random',
    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    UNHEX('4fa1b998bc774c8abc50af8288581ffc'),
    'random',
    TRUE
);

INSERT INTO waypoints (uuid, place_type, place_override) 
VALUES (
    UNHEX('4fa1b998bc774c8abc50af8288581ffd'),
    'random',
    TRUE
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f1'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    NULL,
    'story.museumheist.step.thrillingnews.description',
    'audio',
    '6Qkm11eg1tgqu1aJEFExKi',
    'story.museumheist.step.thrillingnews.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f2'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    UNHEX('4fa1b998bc774c8abc50af8288581ffa'),
    'story.museumheist.step.examinecrimescene.description',
    'video',
    '3WHnU7SCQdr4jRZ781LVAk',
    'story.museumheist.step.examinecrimescene.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f3'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    NULL,
    'story.museumheist.step.suspiciouscarnews.description',
    'audio',
    '3bUfBK9VECS0hBRBKeg2RA',
    'story.museumheist.step.suspiciouscarnews.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f4'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    UNHEX('4fa1b998bc774c8abc50af8288581ffb'),
    'story.museumheist.step.collectevidence.description',
    'video',
    '6OL5xzmG5o7olCGSphaYQx',
    'story.museumheist.step.collectevidence.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f5'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    NULL,
    'story.museumheist.step.gotoforensicslab.description',
    NULL,
    NULL,
    'story.museumheist.step.gotoforensicslab.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f6'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    UNHEX('4fa1b998bc774c8abc50af8288581ffc'),
    'story.museumheist.step.forensicresults.description',
    'image',
    '74GqGc6raMnMByXTeEG16A',
    'story.museumheist.step.forensicresults.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f7'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    NULL,
    'story.museumheist.step.artloverfound.description',
    NULL,
    NULL,
    'story.museumheist.step.artloverfound.title'
);

INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, asset_id, title) 
VALUES (
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f8'),
    UNHEX('9e1254773a9e4d39ae635a09a50b614a'),
    UNHEX('4fa1b998bc774c8abc50af8288581ffd'),
    'story.museumheist.step.arrest.description',
    'image',
    '5wRyGrBPwwQtaagIljrXXz',
    'story.museumheist.step.arrest.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc2'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f1'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f2'),
    'story.museumheist.step.thrillingnews.decision.examinecrimescene.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc3'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f2'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f3'),
    'story.museumheist.step.examinecrimescene.decision.suspiciouscarnews.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc4'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f3'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f4'),
    'story.museumheist.step.suspiciouscarnews.decision.acceptgotosuspiciouscar.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc5'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f4'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f5'),
    'story.museumheist.step.collectevidence.decision.gotoforensicslab.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc6'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f5'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f6'),
    'story.museumheist.step.gotoforensicslab.decision.acceptgotoforensiclab.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc7'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f6'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f7'),
    'story.museumheist.step.forensicresults.decision.artlover.title'
);

INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) 
VALUES (
    UNHEX('27d8e03dc0254e7d9c31eb38d5e2adc8'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f7'),
    UNHEX('7a1d8a9a2d514abebaa9b2ee5c13e3f8'),
    'story.museumheist.step.arrest.decision.finish.title'
);
/* >> MUSEUM HEIST ************************************/
