DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)

-- Used cheatsheet for primary key syntax
-- Ran each time something added to validate correctness
CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT,
  sigil TEXT,
  motto TEXT
);

CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name TEXT,
  weapon TEXT,
  age INTEGER
);

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto)
  VALUES  ('Targaryn', 'Three-headed Dragon', 'Fire and Blood' ),
          ('Stark','Grey Direwolf','Winter is Coming'),
          ('Lannister','Golden Lion', 'Hear Me Roar!');

INSERT INTO people (name, weapon, age)
  VALUES  ('Daenerys Targaryen', 'Dragons', 19 ),
          ('Jon Snow','Sword',20),
          ('Tyrion Lannister','Cross Bow', 36);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE (age > 30 or weapon = 'Dragons');

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'A Lannister Always Pays His Debts' WHERE sigil = 'Golden Lion';
SELECT * from houses;

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Jon Snow';
SELECT * FROM people;
