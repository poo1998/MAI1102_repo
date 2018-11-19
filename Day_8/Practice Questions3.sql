-- Questions on Join
-- Table list and teachers
-- Q1 Given a student’s last name, find the student’s grade, classroom and teacher.

SELECT 
    students4db.list.Grade, students4db.list.Classroom, students4db.teachers.FirstName
FROM
    students4db.list,
    students4db.teachers
WHERE
    students4db.list.Classroom = students4db.teachers.Classroom 
        AND students4db.list.FirstName = 'INGER'; 

-- Q2  Given a student’s last name, find the bus route the student takes

SELECT 
    students4db.list.Bus
FROM
    students4db.list,
    students4db.teachers
WHERE
    students4db.list.Classroom = students4db.teachers.Classroom
        AND students4db.list.FirstName = 'INGER';

-- Q 3 Given a teacher, find the list of students in his/her class

SELECT 
    students4db.list.FirstName, students4db.list.LastName
FROM
    students4db.list,
    students4db.teachers
WHERE
    students4db.list.Classroom = students4db.teachers.Classroom
        AND students4db.teachers.FirstName = 'NANCY';

-- Q 4 Given a bus route, find all students who take it

SELECT 
    students4db.list.FirstName, students4db.list.LastName
FROM
    students4db.list
WHERE
    students4db.list.Bus = 52;


-- Tables  campuses and csufees
-- Q 5 Report all campuses from Los Angeles county. 
-- Output the full name of campus in alphabetical order.

SELECT 
    csudb.campuses.Campus
FROM
    csudb.campuses
WHERE
    csudb.campuses.County = 'Los Angeles'
    ORDER BY csudb.campuses.Campus; 

-- Q 6 For each year between 1994 and 2004 (inclusive) report the number of
-- students who enrolled for undergraduate from California Maritime Academy Output
-- the year,no. of enrollments for each year.

SELECT 
    csudb.csufees.Year,
    
    SUM(csudb.disciplines.Undergraduate) AS total_undergraduate
FROM
    csudb.disciplines,
    csudb.csufees
WHERE
    csudb.disciplines.campus = csufees.Campus
        
        AND csudb.csufees.Year BETWEEN 1994 
        AND 2004
        GROUP BY csudb.csufees.Year;

-- Q 7 Report undergraduate and graduate enrollments (as two numbers) in
-- ’Mathematics’, ’Engineering’ and ’Computer'.

SELECT 
    SUM(csudb.disciplines.Undergraduate) AS total_Undergraduates,
    SUM(csudb.disciplines.graduate) AS total_graduates,
    csudb.discipline_name.Name
FROM
    csudb.disciplines,
    csudb.discipline_name
WHERE
    csudb.discipline_name.Id = csudb.disciplines.Campus
        AND csudb.discipline_name.Name IN ('Mathematics' , 'Engineering', 'Computer and Info. Sciences')
GROUP BY csudb.discipline_name.Name;

-- Q 8 Report graduate enrollments in 2004 
-- Report only one row from each university  
-- the number of graduate students.


-- Q 9 Find all  campuses where graduate enrollment in 2004
-- was at least double than undergraduate enrollment. 
-- Report campus names and discipline id. 
-- Sort output by campus name in alphabetical order.


-- Q 10 Report the total amount of money collected from student fees at ’Fresno State
-- University’ for each year between 2002 and 2004 inclusively,. Output the year.


-- Q 11 Find all campuses where enrollment in 2004 ,
-- was higher than the 2004 enrollment in ’San Jose State University’.
-- Report the name of campus.

 
 -- Tables grapes, wine
 -- Q 12 Find the grape(s) that grow(s) in the largest number of appellations.
-- Report grape name, color and the number of appellations it grows in.




-- Q 13  Find the most popular white grape (i.e., the grape that is used to make
-- the largest number of white wines in the database). Report the name
-- of the grape.



-- Q 14  Report the grape with the largest number of high-ranked wines (score
-- of 93 and above).



-- Q 15 Report the appellation responsible for the largest number of highranked
-- wines (score of 93 and above). Report just the name of the
-- appellation .


-- Q 16 Find the high-ranked wine (score of 93 or above) responsible for highest
-- Price. Report the vintage year, winery, wine name, score and
-- the Price (Chronological Order).



-- Q 17 Find if there are any 2008 Chardonnays that scored better than any
-- 2007 Syrah. report winery, wine name, appellation, score and price.


-- Tables reservations and rooms
-- Q 18 Find all modern rooms with a base price below $160 and two beds.
-- Report room names and codes in alphabetical order by the code.



-- Q 19 Find all July reservations for the ’Convoke and sanguine’ room. For each reservation
-- report the last name of the person who reserved it, checkin and
-- checkout dates, the total number of people staying and the daily rate.
-- Output reservations in chronological order.




-- Q 20 Find all rooms occupied on February 6, 2010. Report full name of the
-- room, the check-in and checkout dates of the reservation. Sort output
-- in alphabetical order by room name.




-- Q 21 For each stay of GRANT KNERIEN in the hotel, calculate the total amount
-- of money, he paid. Report reservation code, checkin and checkout
-- dates, room name (full) and the total amount of money the stay cost.
-- Sort output in chronological order by the day of arrival.




-- Q 22 For each reservation that starts on December 31, 2010 report the room
-- name, nightly rate and the total amount of
-- money paid. Sort output in descending order by the number of nights
-- stayed.




















 
 
 
 
 
 
 
 
 
 
 