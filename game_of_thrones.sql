CREATE DATABASE westeros;
drop table houses;
drop table people;
Create table houses (name text, symbol text, saying text);
create table people (name text, favorite_weapon text, age INTEGER);

insert into houses (name, symbol, saying) VALUES ('a', 'arrow', 'a');
insert into houses (name, symbol, saying) VALUES ('B', 'brow', 'b');
insert into houses (name, symbol, saying) VALUES ('C', 'crr', 'c');
insert into people (name, favorite_weapon, age) VALUES('aa', 'aab', 30);
insert into people (name, favorite_weapon, age) VALUES('bb', 'bbc', 40);
insert into people (name, favorite_weapon, age) VALUES('cc', 'ccd', 32);

drop database westeros;
