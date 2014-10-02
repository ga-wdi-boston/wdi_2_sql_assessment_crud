DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT);

CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER);

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses(id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT); --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(1, 'Stark', 'DireWolf', 'Winter Is Coming');
INSERT INTO houses(id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT); --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(3, 'Hufflepuff', 'Badger', 'Be Average');
  VALUES(2, 'Lanister', 'Lion', 'We are Aryan');
INSERT INTO houses(id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT); --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(3, 'Hufflepuff', 'Badger', 'Be Average');



INSERT people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER); --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(1, 'Arya', 'Needle', 13);
INSERT people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER); --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(2, 'Tyrion', 'Mind', 23 );
INSERT people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER); ---Used cheatsheet to change INSERT to INSERT INTO
  VALUES(3, 'Frank', , 16);



-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
  SELECT * FROM people
    WHERE age > 16
    OR weapon = 'Needle';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
  UPDATE houses
  WHERE sigil = 'Badger'
  motto = 'Be Great';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
  DELETE people
    WHERE name = 'Frank';
