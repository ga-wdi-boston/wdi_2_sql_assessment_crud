DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

## I referenced the cheat sheet

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT,
  sigil TEXT,
  motto TEXT);

--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name TEXT,
  weapon TEXT,
  age INTEGER);

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO housese (name, sigil, motto) VALUES ('Sonia', 'rock', 'Power for all!');
INSERT INTO housese (name, sigil, motto) VALUES ('Sam', 'flower', 'Smell good');
INSERT INTO housese (name, sigil, motto) VALUES ('Ali', 'robot', 'Future of people');

INSERT INTO people (name, weapon, age) VALUES ('Lily', 'hammer', 23);
INSERT INTO people (name, weapon, age) VALUES ('Sonia', 'pipe', 50);
INSERT INTO people (name, weapon, age) VALUES ('Erik', 'paper planes', 25);


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 25 OR weapon = 'pipe';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Flower Power!' WHERE sigil = 'Sam';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Erik';
