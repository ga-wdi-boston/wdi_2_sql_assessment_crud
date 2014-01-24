CREATE DATABASE westeros;

DROP TABLE houses;
DROP TABLE people;

CREATE TABLE houses (
	name text,
	symbol text,
	saying text
);

CREATE TABLE people (
	name text,
	favorite_weapon text,
	age integer
);

INSERT INTO houses VALUES ('Gryffindor', 'Lion', 'Ello, Arry');
INSERT INTO houses VALUES ('Targarian', 'Fox', 'Lez go');
INSERT INTO houses VALUES ('Stark', 'Wolf', 'Wheres daddy?');

INSERT INTO people VALUES ('Harry Potter', 'Wand', 18);
INSERT INTO people VALUES ('Denareys', 'Wind', 5);
INSERT INTO people VALUES ('John', 'Sword', 14);

SELECT * FROM houses;
SELECT * FROM people;

DROP DATABASE westeros;
