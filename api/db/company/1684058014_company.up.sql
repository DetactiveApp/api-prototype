/***************************************************
**----------------- CREATE TABLES ----------------**
***************************************************/

CREATE TABLE stickers (
  id VARCHAR(255) PRIMARY KEY,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  description VARCHAR(255) NOT NULL,
  redirect_url TEXT NOT NULL
);

CREATE TABLE sticker_hits (
  sticker_id VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE staff (
  id SERIAL PRIMARY KEY,
  joined TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  mail VARCHAR(255) NOT NULL,
  storystudio_access BOOLEAN NOT NULL DEFAULT FALSE
);

/***************************************************
**-------------- CREATE CONSTRAINTS --------------**
***************************************************/

ALTER TABLE sticker_hits
ADD CONSTRAINT fk_sticker
FOREIGN KEY (sticker_id)
REFERENCES stickers(id)
ON DELETE CASCADE;