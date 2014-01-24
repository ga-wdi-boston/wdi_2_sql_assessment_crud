CREATE DATABASE westeros;

connect.westeros;

CREATE TABLE houses (
	name text, 
	symbol text, 
	saying textm
	);

CREATE TABLE people(
	name text, 
	favorite_weapon text, 
	age integer
	);

INSERT INTO houses (
	houses (name, symbol, saying)
	VALUES ('large_house', 'lar', 'welcome!')
);

INSERT INTO houses (
	houses (name, symbol, saying)
	VALUES ('middle_house', 'mid', 'hello!')
);

INSERT INTO houses (
	houses (name , symbol, saying)
	VALUES ('small_house', 'sma', 'Hi!')
);

INSERT INTO people (
	people (name, favorite_weapon, age)
	VALUES ('Joe', 'AK47', 23)
);

INSERT INTO people (
	people (name, favorite_weapon, age)
	VALUES ('Sean', 'AK46', 25)
);

INSERT INTO people (
	people (name, favorite_weapon, age)
	VALUES ('Tom', 'AK48', 22)
);



DROP DATABASE westeros;