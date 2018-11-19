-- creating carsdb database

CREATE DATABASE car2db;

-- changing database to carsdb
	
USE car2db; 

-- import data from carmakers.csv

-- SQL Functions

-- COUNT()
-- SUM()
-- AVG()
-- MAX()
-- MIN()

-- Questions :

-- 1. Display How many entries are there in cardb2 table ?

SELECT COUNT(*) AS total_entry FROM car2db.cardb2;

-- 2. Display average number of carmakers from country 2,  from cardb2 table ?

SELECT AVG(country) AS avg_of_maker FROM car2db.cardb2 WHERE country = 2;

-- 4. Display the maximum country code number from cardb2 table ?

SELECT MAX(country) AS max_of_maker FROM car2db.cardb2;

-- 5. Display the minimum country code number  from cardb2 table ?

SELECT MIN(country) AS min_of_maker FROM car2db.cardb2;


-- GROUP BY clause

-- Questions :

-- 1. Display count number of makers from every country  ?

SELECT COUNT(maker) As Total_no_of_maker,maker FROM car2db.cardb2 GROUP BY maker;

-- 4. Display the maximum country code  from cardb2 table ?

SELECT MAX(country) AS max_country_code FROM car2db.cardb2;

-- 5. Display the minimum country code from cardb2 table ?

SELECT MIN(country) AS min_country_code FROM car2db.cardb2;

-- SQL ORDER BY to sort by column(s)

-- Questions :

-- 1. Display count of makers from every country and sort them in ascending order from cardb2 table ?

SELECT COUNT(maker) AS total_maker,country FROM car2db.cardb2 GROUP BY country ORDER BY COUNT(maker) ASC;

-- SQL DISTINCT basically removes all duplicates

-- Question :

-- 1. Display maker column from cardb2 table without duplicates ?

SELECT DISTINCT(maker) FROM car2db.cardb2;

-- Question :

-- 1. Display count of each car maker , 
--    who have value of country equal to or more than 3  ?

SELECT COUNT(maker) AS total_maker,maker FROM car2db.cardb2 WHERE country >=3 GROUP BY maker;












































