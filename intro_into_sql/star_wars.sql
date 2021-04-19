DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL PRIMARY KEY,
  character_id INT REFERENCES characters(id),
  hilt_metal VARCHAR(255),
  colour VARCHAR(255)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside) VALUES ('Yoda', false);
INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 4);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'titanium', 2);

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';

Deletes ALL the rows
DELETE FROM characters;

DELETE FROM characters WHERE name = 'Darth Maul';

UPDATE characters SET age = 26 WHERE id = 5;

SELECT name, darkside FROM characters;
SELECT COUNT(*) FROM characters;
SELECT * FROM characters;


