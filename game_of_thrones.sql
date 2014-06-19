DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(
  id serial primary key
  , name text
  , sigil text
  , motto text
);
CREATE TABLE people(
  id serial primary key
  , name text
  , weapon text
  , age integer
);


-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto)
  VALUES ('Winterfell', 'wolf', 'Winter is coming')
  , ('Targaryen', 'dragon', 'Summer is coming')
  , ('Lannister', 'horse', 'Fall is coming');

INSERT INTO people (name, weapon, age)
  VALUES ('John Snow', 'sword', 20)
  , ('Arya', 'cudgel', 15)
  , ('Executioner', 'mace', 50);


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 30 OR weapon = 'cudgel';


-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Fall is so over' WHERE sigil = 'horse';


-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID
DELETE FROM people WHERE name = 'Executioner';
