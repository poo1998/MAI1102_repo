
-- 1. creating flightsDB database

CREATE DATABASE flightsdb;

-- 2. changing database to flightsDB	

USE flightsdb;

-- 3. import data from flights.csv

-- 4. SQL operators

-- Question 1:
-- Display all columns data of all the rows from the flights table ?

SELECT * FROM flightsdb.flights;


-- Question 2:
-- Display source and destination airport  from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights;

-- Question 3:
-- Display  all airline code  from flights table ?

SELECT Airline,FlightNo FROM flightsdb.flights;

-- 5. SQL WHERE operators

-- Question 1:
-- Select all flights whose airline number is 3 from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE Airline = 3;

-- Question 2:
-- Select all flights whose airline number is 3 or 5 from flights table ?

SELECT SourceAirport,DestAirport,Airline FROM flightsdb.flights WHERE Airline IN (5,3);


-- 6. SQL WHERE with comparison operators

-- comparison operators
-- =	  Equals to
-- <>	not equals to
-- !=	not equals to
-- <	  Less than
-- <=	Less-equal than
-- >	  Greater than
-- >=	Greater-equal than


-- Question 1:
-- Select all flights  who airline number is not 3 or 5  from flights table ?

SELECT SourceAirport,DestAirport,Airline FROM flightsdb.flights WHERE Airline <>3 AND Airline <>5;

-- Question 2:
-- Select all flights   whose airline number is greater than 3 from flights table ?

SELECT SourceAirport,DestAirport,Airline FROM flightsdb.flights WHERE Airline >3;

-- 7. SQL WHERE clause with LIKE operator
-- Question 1:
-- Select flights whose sourceAirport starts with A from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE SourceAirport LIKE "A%";

-- Question 2:
-- Select flights  whose sourceAirport ends  with v from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE SourceAirport LIKE "%V";

-- Question 3:
-- Select flights  which having  sourceAirport of exactly 3 characters from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE SourceAirport LIKE "___";

-- 8. SQL WHERE clause with AND logical operator

-- Question 1:



-- SQL WHERE clause with OR logical operator


-- AND returns every row where all the conditions are true.
-- OR returns every row where at least one of the conditions is true.

-- Question 1:
-- Select flights   who has airline greater than 3 or whose sourceAirport   ends with ki from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE Airline>3 AND SourceAirport LIKE "%ki";

-- 10. SQL IN operator

-- Question 1:
-- Select all flights whose airline code are 2,3,5 from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE Airline IN(2,3,4);

-- 11. The SQL NOT operator
-- Question 1:
-- Select flights whose flightno is 4 characters long from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE FlightNo LIKE "____";


-- 12. The SQL  IS NULL operator
-- Select all flights   where flightNo is null?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE FlightNo IS NULL;


-- 13. The SQL BETWEEN operator
-- Select all flights   whose flightNo  between 2 and 30 from flights table ?

SELECT SourceAirport,DestAirport FROM flightsdb.flights WHERE FlightNo BETWEEN 2 AND 30;

-- 14. The SQL ORDER BY operator
-- sort flights table with their flightNo code?

SELECT * FROM flightsdb.flights ORDER BY flightNo ASC;







