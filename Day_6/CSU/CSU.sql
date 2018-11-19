-- Create Database with name campusDB;

CREATE DATABASE csuDB;

USE csuDB;

-- 1. Report all campuses from Los Angeles county.

-- Output the full name of campus in alphabetical order.


SELECT 
    campuses.campus
FROM
    campuses
WHERE
    campuses.county LIKE '%Los Angeles%'
ORDER BY campuses.campus ASC;


-- 2. 
-- For each year between 1994 and 2004 (inclusive) report the number of
-- students who enrolled for undergraduate from California State University-Monterey Bay Output
-- the year,no. of enrollments for each year.

SELECT 
    campuses.year,
    SUM(disciplines.Undergraduate) AS no_of_enrollments
FROM
    campuses,
    disciplines
WHERE
    campuses.Id = disciplines.Campus
        AND campuses.year IN (1994,2004)
        AND campuses.Campus LIKE '%California State University-Monterey Bay%'
GROUP BY campuses.year;


-- 3. 
-- Report undergraduate and graduate enrollments (as two numbers) in
-- ’Mathematics’, ’Engineering’ and ’Computer'.

SELECT 
    discipline_name.Name, SUM(disciplines.Undergraduate)
FROM
    discipline_name,
    disciplines
WHERE
    discipline_name.Name IN ('Mathematics' , 'Engineering', 'Computer and Info. Sciences') 
    GROUP BY discipline_name.Name;

-- 4. 
-- Report graduate enrollments in 2002
-- Report only one row from each university  
-- the number of graduate students.

SELECT 
    SUM(disciplines.Graduate) AS no_of_enrollment,campuses.campus
FROM
    disciplines,
    campuses
WHERE
    campuses.year = 2002
GROUP BY campuses.campus;

-- 5. 
-- Find all  campuses where graduate enrollment in 2004
-- was at least double than undergraduate 
-- Report campus names and discipline id. 
-- Sort output by campus name in alphabetical order.

SELECT 
    discipline_name.Id, campuses.campus
FROM
    discipline_name,
    campuses,
    disciplines
WHERE
    disciplines.Campus = campuses.Id
    AND disciplines.Graduate >= 2*disciplines.Undergraduate
	AND disciplines.year = 2004 ORDER BY campuses.campus;

-- 6. 
-- Report the total amount of money collected from student fees at ’Fresno State
-- University’ for each year between 2002 and 2004 inclusively,. Output the year.

SELECT 
    SUM(csufees.campusfee) AS total_amount, csufees.year
FROM
    csufees,
    campuses
WHERE
    csufees.year IN (2002 , 2004)
        AND campuses.campus LIKE '%Fresno State University%'
        GROUP BY csufees.year ;

-- 7. 
-- Find all campuses where enrollment in 2004 ,
-- was higher than the 2004 enrollment in ’San Jose State University’.
-- Report the name of campus.


SELECT 
    campuses.campus    
FROM
    campuses,
    disciplines
WHERE
	campuses.Id = disciplines.Campus
    AND campuses.campus LIKE '%San Jose State University%' 
    AND disciplines.year = 2004;





