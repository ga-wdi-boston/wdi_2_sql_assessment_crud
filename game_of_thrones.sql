CREATE DATABASE westeros;
CONNECT DATABASE westeros;
CREATE TABLE houses (name text, symbol text, saying text);
CREATE TABLE people (name text, favorite_weapon text, age integer);

INSERT INTO houses (name, symbol, saying) VALUES ('Ni', 'Shrub', 'We are the knights');
INSERT INTO houses (name, symbol, saying) VALUES ('Dawn', 'Shield', 'Darkness retreats');
INSERT INTO houses (name, symbol, saying) VALUES ('Lepers', 'Stick', 'Keep your distance');

INSERT INTO people (name, favorite_weapon, age) VALUES ('Ellen', 'wrench', 30);
INSERT INTO people (name, favorite_weapon, age) VALUES ('Paris', 'candlestick', 42);
INSERT INTO people (name, favorite_weapon, age) VALUES ('Chase', 'teeth', 19);

DROP DATABASE westeros;