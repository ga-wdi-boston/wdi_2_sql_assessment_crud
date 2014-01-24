CREATE DATABASE westeros;

\c westeros;

CREATE TABLE houses(name text, symbol text, saying text);

CREATE TABLE people (name text, favorite_weapon text, age integer);

INSERT INTO houses (name, symbol, saying) VALUES ('Apple', 'apple', 'there is no escaping us');
INSERT INTO houses (name, symbol, saying) VALUES ('Orange', 'orange', 'orange juice for the win');
INSERT INTO houses (name, symbol, saying) VALUES ('Pear', 'pear', 'you will regret it');

INSERT INTO people (name, favorite_weapon, age) VALUES ('Leah', 'Broadsword', 19);
INSERT INTO people (name, favorite_weapon, age) VALUES ('Melvin', 'Dagger', 49);
INSERT INTO people (name, favorite_weapon, age) VALUES ('Keeve', 'Bare Hands', 9);

DROP DATABASE westeros;

