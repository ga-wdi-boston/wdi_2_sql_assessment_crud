CREATE DATABASE westeros;

\connect westeros;

CREATE TABLE houses (id SERIAL PRIMARY KEY, name TEXT, symbol TEXT, saying TEXT);

CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, favorite_weapon TEXT, age INTEGER);

INSERT INTO houses (name, symbol, saying) VALUES ('Arryn', 'Arryn Symbol', 'As high as honor');
INSERT INTO houses (name, symbol, saying) VALUES ('Baratheon', 'Black Stag', 'Ours is the fury');
INSERT INTO houses (name, symbol, saying) VALUES ('Bolton', 'Flayed Man', 'A flayed man has no secrets');

INSERT INTO people (name, favorite_weapon, age) VALUES ('Tyrion Lannister', 'Sword', 26);
INSERT INTO people (name, favorite_weapon, age) VALUES ('Daenarys Targerion', 'Other people', 40);
INSERT INTO people (name, favorite_weapon, age) VALUES ('Jon Snow', 'Fierce good looks', 28);

\connect postgres;

DROP DATABASE westeros;
