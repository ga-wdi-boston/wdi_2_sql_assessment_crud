praggya=# CREATE DATABASE westeros;
CREATE DATABASE
praggya=# CREATE TABLE houses (name TEXT, symbol TEXT, saying TEXT);
CREATE TABLE
praggya=# CREATE TABLE people (name TEXT, favorite_weapon TEXT, age INTEGER);
CREATE TABLE
praggya=# INSERT INTO houses VALUES ('Toms', 'Cat', 'Never say never');
INSERT 0 1
praggya=# INSERT INTO houses VALUES ('Brown', 'Cow', 'Moooo');
INSERT 0 1
praggya=# INSERT INTO houses VALUES ('Polaszewski', 'Ram', 'Giving up is for losers');
INSERT 0 1
praggya=# INSERT INTO people VALUES ('Brad', 'Mace', 23);
INSERT 0 1
praggya=# INSERT INTO people VALUES ('Kevin', 'Spear', 34);
INSERT 0 1
praggya=# INSERT INTO people VALUES ('Marcus', 'Club', 45);
INSERT 0 1
praggya=# DROP DATABASE westeros;
DROP DATABASE
