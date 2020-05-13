DROP DATABASE IF EXISTS world;
CREATE DATABASE world;
USE world;
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS comment;

CREATE TABLE cities (
  id integer,
  name varchar(100),
  country_code varchar(3), 
  district varchar(20),
  population int(11),
  PRIMARY KEY(id)
);

CREATE TABLE comment (
  mid integer,
  author varchar(200),
  message varchar(200), 
  PRIMARY KEY(mid)
);

INSERT INTO cities VALUES (1,"Mary Mary","123","Moo Town",4321);
INSERT INTO cities VALUES (2,"Gary Gary","321","Goo Town",5032);
INSERT INTO cities VALUES (3,"Tary Tary","456","Too Town",8587);
INSERT INTO cities VALUES (4,"Zary Zary","654","Zoo Town",8462);
INSERT INTO cities VALUES (5,"Lary Lary","789","Loo Town",7896);

INSERT INTO comment VALUES (1,"Mary Mary","123");
INSERT INTO comment VALUES (2,"Gary Gary","321");
INSERT INTO comment VALUES (3,"Tary Tary","456");
INSERT INTO comment VALUES (4,"Zary Zary","654");
INSERT INTO comment VALUES (5,"Lary Lary","789");

