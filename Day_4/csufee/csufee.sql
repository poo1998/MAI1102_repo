CREATE DATABASE csufeedb;

USE csufeedb;

-- import data from csufee.csv

SELECT * FROM csufee;

-- 1. Display How many entries are there in csufee table ?

SELECT COUNT(*) FROM csufee;

-- 2. Display average number of CampusFee from campus 2,  from csufee table ?

SELECT AVG(CampusFee) FROM csufee WHERE Campus=2;


-- 4. Display the maximum campus code number from csufee table ?

SELECT MAX(CampusFee) FROM csufee;

-- 5. Display the minimum campus code number  from csufee table ?

SELECT MIN(CampusFee) FROM csufee;

-- Questions :

-- 1. Display count number of totalcsufee_AYs from every campus ?

SELECT campus,COUNT(*) AS totalcsufee_AYs FROM csufee GROUP BY campus; 

-- 4. Display the maximum campus code  from csufee table ?

SELECT MAX(Campus) FROM csufee;

-- 5. Display the minimum campus code from csufee table ?

SELECT MIN(Campus) FROM csufee;

-- Questions :

-- 1. Display count of totalcsufee_AYs from every campus and sort them in ascending order from csufee table ?

SELECT campus,COUNT(*) AS totalcsufee_AYs FROM csufee GROUP BY campus ASC; 

-- Question :

-- 2. Display totalcsufee_AY column from csufee table without duplicates ?

SELECT DISTINCT(CampusFee) FROM csufee;


-- Question :

-- 1. Display count of each totalcsufee_AY , 
--    who have value of campus equal to or more than 3  ?

SELECT campus,COUNT(*) AS totalcsufee_AY FROM csufee WHERE campus>=3 Group BY Campus;



