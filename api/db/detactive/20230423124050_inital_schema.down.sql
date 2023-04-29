/***************************************************
**-------------- REMOVE CONSTRAINTS --------------**
***************************************************/

ALTER TABLE decisions 
DROP CONSTRAINT fk_step_input, 
DROP CONSTRAINT fk_step_output;

ALTER TABLE player_stories 
DROP CONSTRAINT fk_story, 
DROP CONSTRAINT fk_player;

ALTER TABLE player_story_steps 
DROP CONSTRAINT fk_player_story, 
DROP CONSTRAINT fk_step;

ALTER TABLE steps
DROP CONSTRAINT fk_story, 
DROP CONSTRAINT fk_waypoint;

/***************************************************
**----------------- REMOVE TABLES ----------------**
***************************************************/

DROP TABLE decisions, players, player_stories, player_story_steps, steps, stories, waypoints;

/***************************************************
**-------------- REMOVE CUSTOM TYPES -------------**
***************************************************/

DROP TYPE IF EXISTS MEDIUMTYPE;

/***************************************************
**--------------- REMOVE EXTENSIONS --------------**
***************************************************/

DROP EXTENSION IF EXISTS "uuid-ossp";