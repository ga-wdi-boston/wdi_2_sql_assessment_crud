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

-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto) VALUES
  ('Baratheon', 'Stag', 'Ours is the Fury'),
  ('Stark', 'Direwolf', 'Winter is Coming'),
  ('Tully', 'Trout', 'Family, Duty, Honor');

INSERT INTO people (name, weapon, age) VALUES
  ('Brienne', 'Oathkeeper', 34),
  ('Jon Snow', 'Longclaw', 19),
  ('Arya', 'Needle', 11);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 14 OR weapon = 'Needle';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Winter is Here' WHERE sigil = 'Direwolf';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Arya';
