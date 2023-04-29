/***************************************************
**--------------- CREATE EXTENSIONS --------------**
***************************************************/

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/***************************************************
**-------------- CREATE CUSTOM TYPES -------------**
***************************************************/

CREATE TYPE MEDIUMTYPE AS ENUM ('audio', 'image', 'video');

/***************************************************
**----------------- CREATE TABLES ----------------**
***************************************************/

CREATE TABLE decisions (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  step_input_uuid UUID NOT NULL,
  step_output_uuid UUID NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE players (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY
);

CREATE TABLE player_stories (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  story_uuid UUID NOT NULL,
  player_uuid UUID NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  finished_at TIMESTAMP
);

CREATE TABLE player_story_steps (
  player_story_uuid UUID,
  step_uuid UUID,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  finished_at TIMESTAMP,
  latitude DOUBLE PRECISION NOT NULL,
  longitude DOUBLE PRECISION NOT NULL,
  was_waypoint_a_fallback BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY(player_story_uuid, step_uuid)
);

CREATE TABLE steps (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  story_uuid UUID NOT NULL,
  waypoint_uuid UUID,
  description VARCHAR(120),
  medium_type MEDIUMTYPE NOT NULL,
  src TEXT NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE stories (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  description VARCHAR(120) NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE waypoints (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  max_distance SMALLINT NOT NULL,
  min_distance SMALLINT NOT NULL,
  place_type VARCHAR(30)
);

/***************************************************
**-------------- CREATE CONSTRAINTS --------------**
***************************************************/

ALTER TABLE decisions
ADD CONSTRAINT fk_step_input
FOREIGN KEY (step_input_uuid)
REFERENCES steps(uuid)
ON DELETE CASCADE;

ALTER TABLE decisions
ADD CONSTRAINT fk_step_output
FOREIGN KEY (step_output_uuid)
REFERENCES steps(uuid)
ON DELETE CASCADE;

ALTER TABLE player_stories
ADD CONSTRAINT fk_story
FOREIGN KEY (story_uuid)
REFERENCES stories(uuid)
ON DELETE CASCADE;

ALTER TABLE player_stories
ADD CONSTRAINT fk_player
FOREIGN KEY (player_uuid)
REFERENCES players(uuid)
ON DELETE CASCADE;

ALTER TABLE player_story_steps
ADD CONSTRAINT fk_player_story
FOREIGN KEY (player_story_uuid)
REFERENCES player_stories(uuid)
ON DELETE CASCADE;

ALTER TABLE player_story_steps
ADD CONSTRAINT fk_step
FOREIGN KEY (step_uuid)
REFERENCES steps(uuid)
ON DELETE CASCADE;

ALTER TABLE steps
ADD CONSTRAINT fk_story
FOREIGN KEY (story_uuid)
REFERENCES stories(uuid)
ON DELETE CASCADE;

ALTER TABLE steps
ADD CONSTRAINT fk_waypoint
FOREIGN KEY (waypoint_uuid)
REFERENCES waypoints(uuid)
ON DELETE CASCADE;