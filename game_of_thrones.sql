DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- ±±±±±±±±±±±±±±±±±±±±±±±±±±±±
-- 5/5 CORRECT!! HOORAAAY!

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  sigil TEXT,
  motto TEXT
);

CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  weapon TEXT,
  age INTEGER
);
-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses 
  (name, sigil, motto)
  VALUES
  ('Gryfendor','Malesuada Dapibus', 'Nullam id dolor id nibh ultricies vehicula ut id elit.'),
  ('Slythering','Sollicitudin Quam','Donec id elit non mi porta gravida at eget metus.'),
  ('Ravenclaw','Commodo Tristique','Nulla vitae elit libero, a pharetra augue.');

INSERT INTO people 
  (name, weapon, age)
  VALUES
  ('Harry Potter','Battle Axe',17),
  ('Hermione Granger','Weed Wacker',18),
  ('Ronald Weasley','Long Sword',17);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people
  WHERE people.age > 17
  OR people.weapon = 'Battle Axe';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
-- ±±±±±±±±±±±±±±±±±±±±±±±±±±
-- USED NOTES FOR THIS ANSWER
-- ±±±±±±±±±±±±±±±±±±±±±±±±±±
UPDATE houses
  SET motto = 'Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor.'
  WHERE houses.sigil = 'Malesuada Dapibus';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
-- ±±±±±±±±±±±±±±±±±±±±±±±±±±
-- USED NOTES FOR THIS TOO :-( I DON'T DELETE PEOPLE TOO OFTEN
-- ±±±±±±±±±±±±±±±±±±±±±±±±±±
DELETE FROM people
  WHERE people.name = 'Harry Potter';