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
  , motto TEXT
);

CREATE TABLE people(
  id SERIAL PRIMARY KEY
  , name TEXT
  , weapon TEXT
  , age NUMERIC
);


-- 2. Create at least three houses and three people with varying attributes.
INSERT INTO houses(name,sigil,motto) VALUES
  ('name1','sigle1','motto1'),
  ('name2','sigle2','motto2'),
  ('name3','sigle3','motto3')
;

INSERT INTO people (name,weapon,age) VALUES
  ('name1','Sword',24),
  ('name2','Knife',50),
  ('name3','Bow&Arrows',30)
;
-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.
SELECT * FROM people WHERE age > 29 OR weapon = 'Knife';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.
UPDATE houses set motto = 'GOGOGO' where name = 'name1';
select * from houses where name = 'name1';

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.
DELETE FROM people where name = 'name1';
select * from people;
