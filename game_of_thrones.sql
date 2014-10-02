

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)

-- I USED MY CHEATSHEET THROUGHOUT THIS

CREATE TABLE houses (id SERIAL PRIMARY KEY, name TEXT, color TEXT, motto TEXT);

CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, strength TEXT, age INTEGER);

-- 2. Create at least three houses and three people with varying attributes.

INSERT INTO houses (name, color, motto) VALUES ('Hufflepuff', 'pink', 'be nice');
INSERT INTO houses (name, color, motto) VALUES ('Ravenclaw', 'crimson', 'be smart');
INSERT INTO houses (name, color, motto) VALUES ('Gryffindor', 'gold', 'be brave');
INSERT INTO houses (name, color, motto) VALUES ('Slytherin', 'green', 'be the best');

INSERT INTO people (name, strength, age) VALUES ('Harry Potter', 'renaissance ability', 18);
INSERT INTO people (name, strength, age) VALUES ('Draco Malfoy', 'cowardice', 18);
INSERT INTO people (name, strength, age) VALUES ('Cedric Diggory', 'selflessness', 19);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.

SELECT * FROM people WHERE strength = 'cowardice' OR age > 18;

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.

UPDATE houses SET motto = 'be the worst' WHERE name = 'Slytherin';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.

DELETE FROM people WHERE id = 3;
