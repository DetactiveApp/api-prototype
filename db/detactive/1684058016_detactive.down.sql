/***************************************************
**-------------- REMOVE CONSTRAINTS --------------**
***************************************************/

ALTER TABLE decisions 
DROP CONSTRAINT fk_step_input, 
DROP CONSTRAINT fk_step_output;

ALTER TABLE user_stories 
DROP CONSTRAINT fk_story, 
DROP CONSTRAINT fk_user;

ALTER TABLE user_story_steps 
DROP CONSTRAINT fk_user_story, 
DROP CONSTRAINT fk_step;

ALTER TABLE steps
DROP CONSTRAINT fk_story, 
DROP CONSTRAINT fk_waypoint;

/***************************************************
**----------------- REMOVE TABLES ----------------**
***************************************************/

DROP TABLE decisions, users, user_stories, user_story_steps, steps, stories, waypoints;

/***************************************************
**-------------- REMOVE CUSTOM TYPES -------------**
***************************************************/

DROP TYPE IF EXISTS MEDIATYPE;