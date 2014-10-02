DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses (
	id SERIAL PRIMARY KEY, 
	name TEXT, 
	sigil TEXT, 
	motto TEXT);
CREATE TABLE people (
	id SERIAL PRIMARY KEY, 
	name TEXT, 
	weapon TEXT, 
	age INTEGER);
--I just put everything on different lines
-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto) VALUES ('Rose', 'WereWolf', 'Time stops for no man unless he casts Stop.'), ('Awesome', 'Lion', 'Always carry brocolli everywhere you go'), ( 'Greybeard','Dragon', 'Im afraid of the toothfairy');
INSERT INTO people (name, weapon, age) VALUES ('Avi', 'rapier', 20), ('Jack', 'battle axe', 23), ('Mark', 'lance', 25);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 24 OR weapon = 'battle axe';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Friendly fire isnt' WHERE sigil = 'Dragon';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Mark';