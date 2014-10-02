DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(
  id PRIMARY KEY,
  name TEXT,
  sigil TEXT,
  motto TEXT
)

CREATE TABLE people(
  id PRIMARY KEY,
  name TEXT,
  weapon TEXT,
  age INTEGER
)

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (id, name, sigil, motto) VALUES
(1, 'Stark', 'Wolf', 'Lords of the north');

INSERT INTO houses (id, name, sigil, motto) VALUES
(2, 'Talgerian', 'Dragon', 'True heir to the throne');


INSERT INTO houses (id, name, sigil, motto) VALUES
(3, 'Lannister', 'Lion', 'The one and only king');

INSERT INTO houses (id, name, sigil, motto) VALUES
(4, 'Martel', 'Python', 'They will pay the death of my sister');
-- #################################################
--people go under here, different table

INSERT INTO people (id, name, weapon, age) VALUES
(1, 'Tyrion Lanister', 'Inteligence', 40);

INSERT INTO people (id, name, weapon, age) VALUES
(2, 'Jon Snow', 'Strength', 33);

INSERT INTO people (id, name, weapon, age) VALUES
(3, 'Bran Snow', 'Wisard', 16);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.

SELECT * FROM people
  WHERE age > 30;

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses set motto = 'You are not the rightfull king!'
  WHERE sigil = 'Lion';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
-- referenced cheatsheet to make sure DELETE did not delete entire columns
DELETE people WHERE name = 'Jon Snow';
