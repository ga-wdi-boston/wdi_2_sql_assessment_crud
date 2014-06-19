DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)
CREATE TABLE houses(
  id SERIAL PRIMARY KEY
  , name TEXT
  , sigil TEXT
  , Motto TEXT
);

CREATE TABLE people(
  id SERIAL PRIMARY KEY
  , name TEXT
  , weapon TEXT
  , age INTEGER
);


-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses(name, sigil, motto) VALUES
  ('Lannister', 'Lion', 'A Lannister Always Pays His Debts')
  , ('Stark', 'Dire Wolf', 'Winter is Coming')
  , ('Greyjoy', 'Kracken', 'We Do Not Sow');

INSERT INTO people(name, weapon, age) VALUES
  ('Tywin', 'Sword', 38)
  , ('Eddard', 'Ice', 35)
  , ('Theon', 'Bow', 21);


-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 30;

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'Hear Me Roar' WHERE sigil = 'Lion';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name = 'Eddard';
