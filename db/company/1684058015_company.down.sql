/***************************************************
**-------------- REMOVE CONSTRAINTS --------------**
***************************************************/

ALTER TABLE sticker_hits 
DROP CONSTRAINT fk_sticker;

/***************************************************
**----------------- REMOVE TABLES ----------------**
***************************************************/

DROP TABLE stickers, sticker_hits;