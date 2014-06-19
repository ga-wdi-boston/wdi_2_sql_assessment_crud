DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses (
id SERIAL PRIMARY key,
name TEXT,
sigil TEXT,
motto TEXT
);

CREATE TABLE people (
id SERIAL PRIMARY key,
name TEXT,
weapon TEXT,
age INTEGER
);

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto) VALUES
('Black Arrow', 'Cat', 'Hooray'),
('Deutchland', 'Moose', 'Let\'s git this party started' ),
('Monkey House', 'Dolphin', 'Gittin jiggy with it');

INSERT INTO people (name, weapon, age) VALUES
('Steve', 'Bo', 23),
('Merrill', 'Samurai Sword', 89),
('Pinocchio', 'gun', 78);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
Select * WHERE age > 50 OR weapon is 'Samurai Sword';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Let them eat cake' WHERE id = 1;

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name is 'Steve';
