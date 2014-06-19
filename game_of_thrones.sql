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
INSERT INTO houses(name, sigil, motto) VALUES
  ('Stark', 'Direwolf', 'Winter is Coming'),
  ('Mormont', 'Great Bear', 'Here we Stand'),
  ('Greyjoy', 'Squid', 'We do not Sow');

INSERT INTO people(name, weapon, age) VALUES
  ('Jon Snow', 'Longclaw', 16),
  ('Oberyn Martell', 'Spear', 21),
  ('Ned Stark', 'Ice', 30);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 20;

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Winter is totally here' WHERE name = 'Stark'

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Oberyn Martell';
-- Soul and/or face crushing, really
