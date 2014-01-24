CREATE DATABASE westeros;
\connect westeros;

CREATE TABLE houses (
  id serial primary key,
  name text,
  symbol text,
  saying text
);

CREATE TABLE people (
  id serial primary key,
  name text,
  favorite_weapon text,
  age integer
);

INSERT INTO houses (name, symbol, saying)
  VALUES ('Murphy', 'Guinea Pig', 'Guinea Pigs Rock!');
INSERT INTO houses (name, symbol, saying)
  VALUES ('Fisher', 'Tibbon', 'What is a Tibbon?');
INSERT INTO houses (name, symbol, saying)
  VALUES ('Grant', 'Gitgoin', 'Monieeeez');

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Prescott', 'Chocolate', 31);
INSERT INTO people (name, favorite_weapon, age)
  VALUES ('David', 'Forkbomb', 31);
INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Alex', 'Rspec', 25);

\connect postgres;
DROP DATABASE westeros;
