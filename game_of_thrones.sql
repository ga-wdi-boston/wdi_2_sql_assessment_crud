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
	motto TEXT
);

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	name TEXT,
	weapon TEXT,
	age INTEGER
);

-- Correct


-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto) VALUES ('elendil', 'elf', 'none');
INSERT INTO houses (name, sigil, motto) VALUES ('helms Deep', 'human', 'ut');
INSERT INTO houses (name, sigil, motto) VALUES ('towers', 'urukai', 'ka');

INSERT INTO people (name, weapon, age) VALUES ('legolas', 'bow', '300');
INSERT INTO people (name, weapon, age) VALUES ('aragorn', 'sword', '35');
INSERT INTO people (name, weapon, age) VALUES ('saruman', 'staff', '600');

-- Correct

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT *
FROM people
WHERE age > 100 OR weapon = 'bow';

-- Correct

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses
SET name = 'gondor'
WHERE sigil = 'urukai';

-- Correct

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people
WHERE name = 'saruman';

-- Correct

-- Score 5/5

-- CENK YURTBILIR


