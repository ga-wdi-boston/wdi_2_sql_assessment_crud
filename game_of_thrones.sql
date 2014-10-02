DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)

CREATE TABLE houses (id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT);
CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER);


-- 2. Create at least three houses and three people with varying attributes.

INSERT INTO houses(name, sigil, motto)
VALUES ('Gryffindor', 'Lion', 'Harry Potter is rad');

INSERT INTO houses(name, sigil, motto)
VALUES ('Slytherin', 'Snake', 'We are slimy people');

INSERT INTO houses(name, sigil, motto)
VALUES ('Hufflepuff', 'Badger', 'A bunch of duffers');

INSERT INTO houses(name, sigil, motto)
VALUES ('Ravenclaw', 'Bird of Prey', 'Least interesting house');

INSERT INTO people(name, weapon, age)
VALUES ('Hermione', 'brain', 22);

INSERT INTO people(name, weapon, age)
VALUES ('Ron', 'red hair', 21);

INSERT INTO people(name, weapon, age)
VALUES ('Cho', 'Harry''s eye candy', 19);

INSERT INTO people(name, weapon, age)
VALUES ('Malfoy', 'jerk', 24);


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.

SELECT * FROM people
WHERE age > 20 OR weapon = 'jerk';


-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.

UPDATE houses SET motto = 'Version 2 of motto' WHERE sigil = 'Snake';


-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.

DELETE FROM people WHERE name = 'Malfoy';

-- needed to verify syntax on this last question from my notes
