-- creating reservationsDB database

-- changing database to reservationsDB	

-- import data from reservations.csv

CREATE DATABASE reservationsdb;

USE reservationsdb;

-- Question 1:

-- Display all columns data of all the rows from the RESERVATIONS table ?

SELECT * FROM reservationsdb.reservations;

-- Question 2:

-- Display FirstName and LastName of all the guests from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations;

-- Question 3:

-- Display first name of all the guests from the RESERVATIONS table ?

SELECT FirstName FROM reservationsdb.reservations;

-- Question 1:
-- Select all guests, that have Adults 2 from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE Adults=2;

-- Question 2:
-- Select all guests, that have Childs 1 from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE Childs =1;

-- Question 1:

-- Select all the guests, that have not Adults 0 from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE Adults != 0;

-- Question 2:
-- Select all the guests for whom Rate is more than 150.0 from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE Rate>150.0;


-- Question 1:

-- Select all guests whose FirstName contains at least one a character from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE FirstName LIKE "%a%";

-- Question 2:

-- Select all guests whose LastName starts with ‘m’  from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE LastName LIKE "m%";

-- Question 3:

-- Select all guests whose FirstName is exactly five characters long from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE FirstName LIKE "_____";

-- Question 1:

-- Select only those guests from the RESERVATIONS table ? that:

-- •	have a FirstName exactly five characters long

-- •	have a Adults more than 2

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE FirstName LIKE "_____" AND Adults >2;


-- Question 1:

-- Select guests that have 2 Adults with Room Rent 250.0 from the RESERVATIONS table ?

SELECT FirstName,LastName FROM reservationsdb.reservations WHERE Adults = 2 AND Rate = 250.0;

-- Question 1:

-- Select all the guests whose CheckIn is any of these: 

-- 01-jan-10, 01-feb-10, 01-mar-10, 01-apr-10, 01-may-10 from the RESERVATIONS table ?

SELECT FirstName,LastName,CheckIn FROM reservationsdb.reservations WHERE CheckIn IN ("01-jan-10", "01-feb-10", "01-mar-10", "01-apr-10", "01-may-10");


-- Question 1:

-- Select all the CheckIn that are not in jan month from the RESERVATIONS table ?

SELECT FirstName,LastName,CheckIn FROM reservationsdb.reservations WHERE CheckIn NOT IN ("01-jan-10","06-jan-10","12-jan-10","23-jan-10","30-jan-10","13-jan-10","20-jan-10","10-jan-10","31-jan-10");

-- Select all the guests where CheckOut is null?


SELECT FirstName,LastName,CheckIn FROM reservationsdb.reservations WHERE CheckIn IS NULL;

-- Select all the guests where Rate is between 200 to 250?

SELECT FirstName,LastName,Rate FROM reservationsdb.reservations WHERE Rate BETWEEN 200 AND 250;

-- sort all the guests according to their Rate.

SELECT FirstName,LastName,Rate FROM reservationsdb.reservations ORDER BY Rate ASC;

























