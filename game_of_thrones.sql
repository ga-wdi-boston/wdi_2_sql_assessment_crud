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

\dt houses
\dt people

-- 2. Create at least three houses and three people with varying attributes.

-- something's going wrong with my attempt at multirow insert
-- so i'll just do it this way for now

INSERT INTO houses (
  name,
  sigil,
  motto
)
VALUES (
  'Full House',
  'Golden retriever',
  'How rude!'
);

INSERT INTO houses (
  name,
  sigil,
  motto
)
VALUES (
  'Shiganshina',
  'Titan',
  'SEID IHR DAS ESSEN NEIN WIR SIND DER JÄGER'
);

INSERT INTO houses (
  name,
  sigil,
  motto
)
VALUES (
  'Bob House',
  'Bob',
  'I dont watch this show'
);

INSERT INTO people (
  name,
  weapon,
  age
)
VALUES (
  'Swordfish',
  'A sword, geddit',
  1
);

INSERT INTO people (
  name,
  weapon,
  age
)
VALUES (
  'Abe Vigoda',
  'Abe Vigoda',
  99
);

INSERT INTO people (
  name,
  weapon,
  age
)
VALUES (
  'me',
  'ur mom',
  24
);

SELECT * FROM houses;
SELECT * FROM people;

-- 3. Write a query to get all attributes of people greater than a certain age *or* having a specific weapon.

SELECT name, weapon, age
FROM people
WHERE age > 50 OR weapon = 'ur mom';

-- 4. Change the motto of one of your houses. Look it up by its sigil, since you don't know the ID.

-- looked up UPDATE syntax here: http://www.sql.su/

UPDATE houses
SET motto = 'new motto'
WHERE sigil = 'Bob';

SELECT * FROM houses;

-- 5. Kill off, er, I mean delete one of your people. Look them up by their name, since you don't know the ID.

-- looked up DELETE FROM syntax here: http://www.sql.su/

DELETE FROM people
WHERE name = 'Abe Vigoda';

SELECT * FROM people;

-- oh no time to update http://www.abevigoda.com/ !!!!!!!!!!! rip abegoda




-- im sick today.