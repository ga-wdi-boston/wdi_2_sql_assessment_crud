CREATE DATABASE westeros;

conn.exec(dbname: westeros, host: "localhost")

CREATE TABLE houses (id serial primary key, name text, symbol text, saying text);
CREATE TABLE people (id serial primary key, name text, favorite_weapon text, age integer);


			INSERT INTO houses (id serial primary key, name text, symbol text, saying text)
								 VALUES ('Jamie', 'peace sign', 'I am a champion');

			INSERT INTO houses (id serial primary key, name text, symbol text, saying text)
								 VALUES ('Erica', 'happy face', 'I am a super champion');

			INSERT INTO houses (id serial primary key, name text, symbol text, saying text)
								 VALUES ('Regan', 'exclamation point', 'I am the best champion');



			INSERT INTO people (id serial primary key, name text, favorite_weapon text, age integer)
								 VALUES ('Jamie', 'rock', 4);

			INSERT INTO people (id serial primary key, name text, symbol text, saying text)
								 VALUES ('Erica', 'paper', 6);

			INSERT INTO people (id serial primary key, name text, symbol text, saying text)
								 VALUES ('Regan', 'scissors', 9);

DROP DATABASE westeros;
