create database mydb;
use mydb;

create table goods (id bigint,flavour VARCHAR(100),food VARCHAR(100), prize float);


INSERT INTO goods(id,flavour,food,prize)VALUES(1,"Chocolate","Cake",17.9);
INSERT INTO goods(id,flavour,food,prize)VALUES(2,"Lemon","pastry",17.6);
INSERT INTO goods(id,flavour,food,prize)VALUES(3,"Apple","biscuit",17.3);
INSERT INTO goods(id,flavour,food,prize)VALUES(4,"orange","Cake",19.9);
INSERT INTO goods(id,flavour,food,prize)VALUES(5,"lemon","Cake",19.6);
INSERT INTO goods(id,flavour,food,prize)VALUES(6,"apple","pastry",19.3);
INSERT INTO goods(id,flavour,food,prize)VALUES(7,"cherry","Cake",27.9);
INSERT INTO goods(id,flavour,food,prize)VALUES(8,"cherry","biscuit",27.6);
INSERT INTO goods(id,flavour,food,prize)VALUES(9,"strawberry","Cake",27.3);
INSERT INTO goods(id,flavour,food,prize)VALUES(10,"cherry","Cake",17.1);

SELECT * FROM goods;

create table customer (id bigint,lastName VARCHAR(100),firstName VARCHAR(100));

INSERT INTO customer(id,lastname,firstname)VALUES(1,"khichi","dushyant");
INSERT INTO customer(id,lastname,firstname)VALUES(2,"sharma","ria");
INSERT INTO customer(id,lastname,firstname)VALUES(3,"luxkar","shubham");
INSERT INTO customer(id,lastname,firstname)VALUES(4,"pooniya","annu");
INSERT INTO customer(id,lastname,firstname)VALUES(5,"ladna","lokesh");
INSERT INTO customer(id,lastname,firstname)VALUES(6,"sharma","nishu");
INSERT INTO customer(id,lastname,firstname)VALUES(7,"khan","aasif");
INSERT INTO customer(id,lastname,firstname)VALUES(8,"dhankar","asvni");
INSERT INTO customer(id,lastname,firstname)VALUES(9,"sharma","ankit");
INSERT INTO customer(id,lastname,firstname)VALUES(10,"singh","vishal");
INSERT INTO customer(id,lastname,firstname)VALUES(11,"sharma","lavish");
INSERT INTO customer(id,lastname,firstname)VALUES(12,"shegal","pulkit");

SELECT * FROM customer;

create table countries(countryId int(3),countryName VARCHAR(50),continentName VARCHAR(50));

INSERT INTO countries(countryId,countryName,continentName)VALUES(1,"india","asia");
INSERT INTO countries(countryId,countryName,continentName)VALUES(2,"china","asia");
INSERT INTO countries(countryId,countryName,continentName)VALUES(3,"pakisthan","asia");
INSERT INTO countries(countryId,countryName,continentName)VALUES(4,"shri lanka","asia");

SELECT * FROM countries;

create table carMakers(id int(3),makerName VARCHAR(20),country VARCHAR (30));

INSERT INTO carMakers(id,makerName,country)VALUES(1,"amc","japan");
INSERT INTO carMakers(id,makerName,country)VALUES(2,"volkswagen","kenya");
INSERT INTO carMakers(id,makerName,country)VALUES(3,"bmw","switzerland");
INSERT INTO carMakers(id,makerName,country)VALUES(4,"gm","norway");
INSERT INTO carMakers(id,makerName,country)VALUES(5,"ford","india");
INSERT INTO carMakers(id,makerName,country)VALUES(6,"chrysler","poland");
INSERT INTO carMakers(id,makerName,country)VALUES(7,"citroen","russia");
INSERT INTO carMakers(id,makerName,country)VALUES(9,"fiat","america");
INSERT INTO carMakers(id,makerName,country)VALUES(10,"honda","india");

SELECT * FROM carMakers;











