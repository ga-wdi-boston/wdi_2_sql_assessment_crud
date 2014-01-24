-- DROP DATABASE IF EXISTS westeros;
-- CREATE DATABASE westeros;

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT,
  symbol TEXT,
  saying TEXT
);

CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name TEXT,
  favorite_weapon TEXT,
  age INTEGER
);

INSERT INTO houses (name, symbol, saying)
  VALUES ('Lannister', 'Lion', 'Hear Me Roar');

INSERT INTO houses (name, symbol, saying)
  VALUES ('Baratheon', 'Antlers', 'Ours is the Fury');

INSERT INTO houses (name, symbol, saying)
  VALUES ('Stark', 'Dierwolf', 'Winter is Coming');

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Tyrion', 'Sword', 21);

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Robert', 'Axe', 41);

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Ned', 'Sword', 41);

-- DROP DATABASE westeros;
