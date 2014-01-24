CREATE DATABASE westeros;

-- not sure how to connect to a database from within a .sql file
\connect westeros;

CREATE TABLE houses (id SERIAL PRIMARY KEY, name TEXT, symbol TEXT, saying TEXT);

CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, favorite_weapon TEXT, age INTEGER);

-- sorry, these are weird because i don't actually know game of thrones well

INSERT INTO houses (name, symbol, saying)
	VALUES ("red", "lion", "their eyes were watching god");

INSERT INTO houses (name, symbol, saying)
	VALUES ("blue", "fish", "nobody expects the spanish inquisition");

INSERT INTO houses (name, symbol, saying)
	VALUES ("green", "deer", "ain't nothin' but a peanut");

INSERT INTO people (name, favorite_weapon, age)
	VALUES ("daria", "sarcasm", 16);

INSERT INTO people (name, favorite_weapon, age)
	VALUES ("george r.r. martin", "killing your favorite character", 60);

INSERT INTO people (name, favorite_weapon, age)
	VALUES ("generic british dude", "self-deprecation", 52);

DROP DATABASE westeros;



