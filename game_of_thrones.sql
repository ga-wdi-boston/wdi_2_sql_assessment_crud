-- I refered to my notes on question 4
DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses (id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT);
CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INT);
-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto) VALUES ('house 1', 'spades', 'one for all');
INSERT INTO houses (name, sigil, motto) VALUES ('house 2', 'dimonds', 'all for one');
INSERT INTO houses (name, sigil, motto) VALUES ('house 3', 'clubs', 'care for none');
INSERT INTO people (name, weapon, age) VALUES ('person 1', 'AK-47', 27);
INSERT INTO people (name, weapon, age) VALUES ('person 2', 'M-16', 30);
INSERT INTO people (name, weapon, age) VALUES ('person 3', 'knife', 20);
SELECT * FROM houses;
SELECT * FROM houses;
-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 21;

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'we care!!!...' WHERE name = 'house 3';
SELECT * FROM houses;

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'person 1';
SELECT * FROM people;

