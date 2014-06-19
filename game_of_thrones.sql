DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(
  id SERIAL PRIMARY KEY,
  name TEXT,
  sigil TEXT,
  motto TEXT
);

CREATE TABLE people(
  id SERIAL PRIMARY KEY,
  name TEXT,
  weapon TEXT,
  age INTEGER
);


-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto) VALUES
  ('Lannister', 'Lion', 'Hear me roar.'),
  ('Greyjoys', 'Kraken', 'We do not sow.'),
  ('Baratheon', 'Stag', 'Ours is the fury.');

INSERT INTO people(name, weapon, age) VALUES
  ('Tyrion Lannister', 'Axe', 28),
  ('Aria Stark', 'Rapier', 14),
  ('Little Finger', 'Creepy Intelligence', 35);


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE weapon = 'Creepy Intelligence' OR WHERE age > 20;


-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE house SET motto = 'A Lannister always pays his debts' WHERE sigil = 'Lion';


-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Little Finger';
