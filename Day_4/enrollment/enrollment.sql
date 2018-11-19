-- creating cardb database

CREATE DATABASE enrollmebtdb;

-- changing database to enrollmentdb

-- import data from enrollment.csv

USE enrollmentdb;

SELECT * FROM enrollments;

-- 1. Display How many entries are there in enrollment table ?

SELECT COUNT(*) FROM enrollments;

-- 2. Display average number of enrollment from campus 2,  from enrollment table ?

SELECT AVG(TotalEnrollment_AY) FROM enrollments WHERE Campus="2";

-- 3. Display the maximum campus code number from enrollment table ?

SELECT MIN(TotalEnrollment_AY) FROM enrollments;

-- 4. Display the minimum campus code number  from enrollment table ?

SELECT MIN(TotalEnrollment_AY) FROM enrollments;

-- 5. Display count number of totalEnrollment_AYs from every campus  ?

 SELECT campus,COUNT(totalEnrollment_AY) as totalenrollment FROM enrollments GROUP BY campus;
 
-- 1. Display the maximum campus code  from enrollment table ?

SELECT MAX(Campus) FROM enrollments;

-- 2. Display the minimum campus code from enrollment table ?

SELECT MIN(Campus) FROM enrollments;


-- Questions :

-- 3. Display count of totalEnrollment_AYs from every campus and sort them in ascending order from enrollment table ?

 SELECT campus,COUNT(totalEnrollment_AY) as totalenrollment FROM enrollments GROUP BY campus ASC;
 
 -- Question :

-- 4. Display totalEnrollment_AY column from enrollment table without duplicates ?

SELECT DISTINCT(totalEnrollment_AY) FROM enrollments; 


-- Question :

-- 5. Display count of each totalEnrollment_AY , 
--    who have value of campus equal to or more than 3  ?

SELECT campus,COUNT(totalEnrollment_AY) as totalenrollment FROM enrollments  WHERE Campus>=3 GROUP BY CAMPUS;


 




