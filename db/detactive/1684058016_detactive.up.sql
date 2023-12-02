/***************************************************
**-------------- CREATE CUSTOM TYPES -------------**
***************************************************/

CREATE TYPE MEDIATYPE AS ENUM ('audio', 'image', 'video');

/***************************************************
**----------------- CREATE TABLES ----------------**
***************************************************/

CREATE TABLE decisions (
  uuid BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
  step_input_uuid BINARY(16) NOT NULL,
  step_output_uuid BINARY(16) NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE users (
  uuid BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID()))
);

CREATE TABLE user_stories (
  uuid BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
  story_uuid BINARY(16) NOT NULL,
  user_uuid BINARY(16) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  finished_at TIMESTAMP,
  FOREIGN KEY (story_uuid) REFERENCES stories(uuid) ON DELETE CASCADE,
  FOREIGN KEY (user_uuid) REFERENCES users(uuid) ON DELETE CASCADE
);

CREATE TABLE user_story_steps (
  user_story_uuid BINARY(16),
  step_uuid BINARY(16),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  finished_at TIMESTAMP,
  latitude DOUBLE PRECISION NOT NULL,
  longitude DOUBLE PRECISION NOT NULL,
  PRIMARY KEY(user_story_uuid, step_uuid),
  FOREIGN KEY (user_story_uuid) REFERENCES user_stories(uuid) ON DELETE CASCADE,
  FOREIGN KEY (step_uuid) REFERENCES steps(uuid) ON DELETE CASCADE
);

CREATE TABLE steps (
  uuid BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
  story_uuid BINARY(16) NOT NULL,
  waypoint_uuid BINARY(16),
  asset_id VARCHAR(254),
  description VARCHAR(120) NOT NULL,
  media_type MEDIATYPE,
  title VARCHAR(120) NOT NULL,
  FOREIGN KEY (story_uuid) REFERENCES stories(uuid) ON DELETE CASCADE,
  FOREIGN KEY (waypoint_uuid) REFERENCES waypoints(uuid) ON DELETE CASCADE
);

CREATE TABLE stories (
  uuid BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
  active BOOLEAN NOT NULL DEFAULT FALSE,
  asset_id VARCHAR(254),
  description VARCHAR(120) NOT NULL,
  title VARCHAR(120) NOT NULL
);

CREATE TABLE waypoints (
  uuid BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
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
