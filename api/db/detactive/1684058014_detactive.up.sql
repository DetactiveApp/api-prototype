/***************************************************
**--------------- CREATE EXTENSIONS --------------**
***************************************************/

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/***************************************************
**-------------- CREATE CUSTOM TYPES -------------**
***************************************************/

CREATE TYPE MEDIATYPE AS ENUM ('audio', 'image', 'video');

/***************************************************
**----------------- CREATE TABLES ----------------**
***************************************************/

CREATE TABLE decisions (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  step_input_uuid UUID NOT NULL,
  step_output_uuid UUID NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE users (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY
);

CREATE TABLE user_stories (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  story_uuid UUID NOT NULL,
  user_uuid UUID NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  finished_at TIMESTAMP
);

CREATE TABLE user_story_steps (
  user_story_uuid UUID,
  step_uuid UUID,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  finished_at TIMESTAMP,
  latitude DOUBLE PRECISION NOT NULL,
  longitude DOUBLE PRECISION NOT NULL,
  PRIMARY KEY(user_story_uuid, step_uuid)
);

CREATE TABLE steps (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  story_uuid UUID NOT NULL,
  waypoint_uuid UUID,
  description VARCHAR(120) NOT NULL,
  media_type MEDIATYPE,
  src TEXT NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE stories (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  description VARCHAR(120) NOT NULL,
  title VARCHAR(120) NOT NULL,
  image TEXT NOT NULL,
  active BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE waypoints (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  max_distance SMALLINT NOT NULL,
  min_distance SMALLINT NOT NULL,
  place_type VARCHAR(30),
  place_override BOOLEAN NOT NULL DEFAULT FALSE
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

ALTER TABLE user_stories
ADD CONSTRAINT fk_story
FOREIGN KEY (story_uuid)
REFERENCES stories(uuid)
ON DELETE CASCADE;

ALTER TABLE user_stories
ADD CONSTRAINT fk_user
FOREIGN KEY (user_uuid)
REFERENCES users(uuid)
ON DELETE CASCADE;

ALTER TABLE user_story_steps
ADD CONSTRAINT fk_user_story
FOREIGN KEY (user_story_uuid)
REFERENCES user_stories(uuid)
ON DELETE CASCADE;

ALTER TABLE user_story_steps
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