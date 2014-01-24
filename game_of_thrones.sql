require 'pg'

dbname = "westeros"

system("createdb #{dbname}")

conn = PG.connect(dbname: dbname)

conn.exec("CREATE TABLE houses(id serial primary key, name text, symbol text, saying text)")

conn.exec("CREATE TABLE people(id serial primary key, name text, favorite_weapon text, age integer)")

insert_sql = "INSERT INTO houses (name, symbol, saying) VALUES ('Lanister','Lion','always pay our debits')"
insert = conn.exec(insert_sql)

insert_sql2 = "INSERT INTO houses (name, symbol, saying) VALUES ('Baratheon','Stag','something')"
insert = conn.exec(insert_sql2)

insert_sql3 = "INSERT INTO houses (name, symbol, saying) VALUES ('Tully','Trout','family and fish')"
insert = conn.exec(insert_sql3)

insert_sql4 = "INSERT INTO people (name, favorite_weapon, age) VALUES ('Aria','needle', 13)"
insert = conn.exec(insert_sql4)

insert_sql5 = "INSERT INTO people (name, favorite_weapon, age) VALUES ('John','Ghost', 19)"
insert = conn.exec(insert_sql5)

insert_sql6 = "INSERT INTO people (name, favorite_weapon, age) VALUES ('Renliey','None', 25)"
insert = conn.exec(insert_sql6)







