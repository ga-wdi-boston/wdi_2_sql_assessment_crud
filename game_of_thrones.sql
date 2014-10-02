
--  USED ONLINE RESOURCES

DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros

-- 1. Create two tables:

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT,
  sigil TEXT,
  motto TEXT
);

--   `houses` has an id (primary key), name (text), a sigil (text) and a motto (text)
--   `people` has an id (primary key), name (text), weapon (text), and age (integer)

CREATE TABLE people (
  id SERIAL PRIMARY KEY,
-- I HAD AN ERROR WITH id I OMMITED SERIAL

  name TEXT,
  weapon TEXT,
  age INTEGER
);
-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses (name, sigil, motto)
  VALUES ('ahouse', 'asigil', 'amotto');

INSERT INTO houses (name, sigil, motto)
  VALUES ('bhouse', 'bsigil', 'bmotto');

INSERT INTO houses (name, sigil, motto)
  VALUES ('chouse', 'csigil', 'cmotto');

INSERT INTO people (name, weapon, age)
  VALUES ('aname', 'aweapon', 19);

INSERT INTO people (name, weapon, age)
  VALUES ('bname', 'bweapon', 45);

INSERT INTO people (name, weapon, age)
  VALUES ('cname', 'cweapon', 30);

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.

SELECT * FROM people WHERE age >19 OR weapon = 'aweapon';


-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses SET motto = 'hail' WHERE sigil = 'asigil';

-- I HAD TO CORRECT THIS QUESTION

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people WHERE name='aname';


