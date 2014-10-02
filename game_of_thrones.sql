DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT);

CREATE TABLE people (id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER);

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (id, name, sigil, motto) --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(1, 'Stark', 'DireWolf', 'Winter Is Coming'); -- At each and every one of my INSERT INTO + VALUE combinations, I put a semi-colon on both lines which totally wrecked my program
INSERT INTO houses(id, name, sigil, motto) --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(2, 'Lanister', 'Lion', 'We are Aryan');
INSERT INTO houses(id, name, sigil, motto) --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(3, 'Hufflepuff', 'Badger', 'Be Average');


--X
INSERT INTO people (id, name, weapon, age) --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(1, 'Arya', 'Needle', 13);
INSERT INTO people (id, name, weapon, age) --Used cheatsheet to change INSERT to INSERT INTO
  VALUES(2, 'Tyrion', 'Mind', 23 );
INSERT INTO people (id, name, weapon, age) ---Used cheatsheet to change INSERT to INSERT INTO
  VALUES(3, 'Frank', null , 16);

  SELECT * FROM houses; --Added these just to see where I was at
  SELECT * FROM people;

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
  SELECT * FROM people
    WHERE age > 16
    OR weapon = 'Needle';

--X 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
  UPDATE houses SET motto = 'Be Great' --did not use SET, and had a mixed up order of commands
  WHERE sigil = 'Badger';

  SELECT * FROM houses;

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
  DELETE FROM people
    WHERE name = 'Frank';

  SELECT * FROM people;
