
CREATE DATABASE westeros;

\connect westeros;

CREATE TABLE houses (name text, symbol text, saying text);

CREATE TABLE people (name text, favorite_weapon text, age integer);

INSERT INTO houses (name, symbol, saying) VALUES ("House of Zeus", "Upside-down Skull", "THUNDERRR!!!!");
INSERT INTO houses (name, symbol, saying) VALUES ("House of Mercury", "Happpy Face", "Smile!!!!");
INSERT INTO houses (name, symbol, saying) VALUES ("House of Athena", "Runner", "RUN!!!!");

INSERT INTO people (name, favorite_weapon, age) VALUES ("Joe", "Sword", 40);
INSERT INTO people (name, favorite_weapon, age) VALUES ("Mike", "Mace", 20);
INSERT INTO people (name, favorite_weapon, age) VALUES ("Todd", "Nunchuks", 34);