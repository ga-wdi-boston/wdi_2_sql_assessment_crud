DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

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

INSERT INTO houses (name, sigil, motto) VALUES
  ('Stark', 'direwolf', 'We always die when you start to like us.'),
  ('Lannister', 'lion', 'A Lannister always pays his debts. Or kills his dad. Or bangs his sister.'),
  ('Baratheon', 'stag', 'Why are we still relevant?');

INSERT INTO people (name, weapon, age) VALUES
  ('Ned Stark', 'Detachable Head', 54),
  ('Rob Stark', 'sword', 23),
  ('Tyrion Lannister', 'Crossbow', 36),
  ('Tywin Lannister', 'pen', 67),
  ('Jamie Lannister', 'sword', 39),
  ('Stannis Baratheon', 'Red Lady magic', 49);

SELECT * FROM people WHERE age > 40 OR weapon = 'sword';

UPDATE houses SET motto = 'Ours is the Fury' WHERE sigil = 'stag';

DELETE FROM people WHERE name = 'Rob Stark';

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)


-- 2. Create at least three houses and three people with varying attributes.


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.


-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.


-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
