DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(
  id SERIAL PRIMARY KEY,
  name TEXT,
  sigil TEXT,
  motto TEXT
);

CREATE TABLE people(
  id SERIAL PRIMARY KEY,
  name TEXT,
  weapon TEXT,
  age INTEGER
);

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses(name, sigil, moto)
  VALUES ('Tyrell', 'A golden rose on a green field', 'Growing Strong'),
    ('Baratheon', 'A crowned black stag rampant on a gold field', 'Ours is the Fury'),
    ('Martell', 'A red sun pierced by a gold spear, on an orange field', 'Unbowed, Unbent, Unbroken');

    -- used data.sql to reference the multiple entries in one INSERT (just trying to be fancy)

INSERT INTO people(name, weapon, age)
  VALUES ('Margaery Tyrell', 'Looks', 23),
  ('Stannis Baratheon', 'Longsword', 52),
  ('Tyrion Lannister', 'Crossbow', 42);


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.


-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.


-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
