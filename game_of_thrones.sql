CREATE DATABASE westeros;

CREATE TABLE houses (
name TEXT,
symbol TEXT,
saying TEXT
);

CREATE TABLE people (
name TEXT,
favorite_weapon TEXT,
age INTEGER
);

INSERT INTO houses (name, symbol, saying)
  VALUES ('Stark', 'something', 'Winter is coming');

INSERT INTO houses (name, symbol, saying)
  VALUES ('Lannister', 'gold', 'A Lannister always pays his debts');

INSERT INTO houses (name, symbol, saying)
  VALUES ('House3', 'symbol', 'something else');

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Ned', 'axe', 40);

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Jon', 'spear', 15);

INSERT INTO people (name, favorite_weapon, age)
  VALUES ('Robb', 'knife', 14);

DROP DATABASE westeros;

