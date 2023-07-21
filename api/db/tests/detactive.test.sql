/* STORIES */
INSERT INTO stories (uuid, description, title, image, active) VALUES ('9e125477-3a9e-4d39-ae63-5a09a50b614a', 'Test Story Description....', 'Test Story', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/SMPTE_Color_Bars.svg/1200px-SMPTE_Color_Bars.svg.png', TRUE);

/* WAYPOINTS */
INSERT INTO waypoints (uuid, place_type, place_override) VALUES ('4fa1b998-bc77-4c8a-bc50-af8288581ffc', 'random', TRUE);

/* STEPS */
INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, src, title) VALUES ('7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', '9e125477-3a9e-4d39-ae63-5a09a50b614a', '4fa1b998-bc77-4c8a-bc50-af8288581ffc', 'Test step', 'image', '', 'Test Step');
INSERT INTO steps (uuid, story_uuid, waypoint_uuid, description, media_type, src, title) VALUES ('72710d21-1ab7-4470-9730-bbb3705b3d7d', '9e125477-3a9e-4d39-ae63-5a09a50b614a', '4fa1b998-bc77-4c8a-bc50-af8288581ffc', 'Test step', 'image', '', 'Test Step');

/* DECISIONS */
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) VALUES ('27d8e03d-c025-4e7d-9c31-eb38d5e2adc5', NULL, '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', 'Test Decision');
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) VALUES ('b503d39a-be5f-4fd2-87bc-77516150608f', '7a1d8a9a-2d51-4abe-baa9-b2ee5c13e3f6', '72710d21-1ab7-4470-9730-bbb3705b3d7d', 'Test Decision');
INSERT INTO decisions (uuid, step_input_uuid, step_output_uuid, title) VALUES ('fe1a56e7-9d96-4267-965c-ea49ed9043f8', '72710d21-1ab7-4470-9730-bbb3705b3d7d', NULL, 'Test Decision');

/* USERS */
INSERT INTO users (uuid) VALUES ('87c44130-af78-4c38-9d58-63d5266bde4a');