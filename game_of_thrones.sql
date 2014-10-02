DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:
--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)

CREATE TABLE house(
  id SERIAL PRIMARY KEY, name TEXT, sigil TEXT, motto TEXT
  );

CREATE TABLE people(
  id SERIAL PRIMARY KEY, name TEXT, weapon TEXT, age INTEGER
  );

-- 2. Create at least three houses and three people with varying attributes.

INSERT INTO people (name, weapon, age)
  VALUES('Tyrion Lannister','Crossbow', 36);
INSERT INTO people (name, weapon, age)
  VALUES('Joffrey Baratheon','Sword', 19);
INSERT INTO people (name, weapon, age)
  VALUES('Robert Baratheon','Sword', 43);

INSERT INTO house (name, sigil, motto)
  VALUES('House Baratheon','A crowned black stag rampant on a gold field', 'Ours is the Fury');
INSERT INTO house (name, sigil, motto)
  VALUES('House Stark','A grey direwolf on a white field.', 'Winter is Coming');
INSERT INTO house (name, sigil, motto)
  VALUES('House Lannister','A golden lion rampant on a crimson field.', 'Hear Me Roar!');

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.

SELECT * FROM people WHERE age > 20 OR weapon = 'Sword';

-- forgot to add to check for weapon... oops

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.


UPDATE house SET motto = 'A Lannister Always Pays His Debts' WHERE id = 2;

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.

DELETE FROM people WHERE name = 'Joffrey Baratheon';
SELECT * FROM people;
SELECT * FROM house;


-- I DONT WATCH GAME OF THRONES... to the internet for spoilers... and the internet dosent help that much...
-- 4/5
