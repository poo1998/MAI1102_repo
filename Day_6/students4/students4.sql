USE studentdb;

-- TASK 1 Given a student’s last name, find the student’s grade, classroom and teacher --

SELECT list.FirstName, list.Grade,list.classroom,teachers.FirstName,teachers.LastName FROM list,teachers  WHERE list.classroom = teachers.classroom AND list.LastName like '%COOKUS%';

-- TASK 2 Given a student’s last name, find the bus route the student takes--

SELECT Bus FROM students WHERE StLastName = "RAPOSE";

-- TASK 3 Given a teacher, find the list of students in his/her class --LastNameLastName

SELECT list.LastName,list.FirstName FROM list,teachers WHERE Teachers.FirstName = "MIN";

-- TASK 4 Given a bus route, find all students who take it --

SELECT StLastName,StFirstName FROM students WHERE Bus = "0";


-- TASK 5 Find all students at a specified grade level. --

SELECT list.LastName,list.FirstName FROM list,students WHERE list.Grade = "3";

 
-- TASK 6 Find a student with a given last name
-- For each entry found, print the last name, first name, grade, classroom and teacher name --

SELECT  list.LastName,list.FirstName, list.grade,list.classroom,Teachers.FirstName,Teachers.LastName FROM list,teachers WHERE list.LastName = "CAR";


-- TASK 7 Find a student with a given last name
-- For each entry found, print the last name, first name and the bus route
-- the student takes --

SELECT  StLastName,StFirstName,Bus FROM students WHERE StLastName = "GUICE";

-- TASK 8 Find a teacher with a given last name
-- For each entry found, print the last and the first name of the student. --

SELECT  StLastName,StFirstName,TFirstName FROM students WHERE TLastName = "FAFARD";

-- TASK 9 Find a classroom with a number 
-- For each entry, output the name (last and first) of the student. --

SELECT  StLastName,StFirstName FROM students WHERE Classroom = "107";

-- TASK 10 Find a bus with a number 
-- For each such entry, output the first and the last name of the student
-- and their grade and classroom. --

SELECT  StLastName,StLastName,StFirstName, grade,classroom FROM students WHERE BUS = "51";


-- Task 11 Display all the unique bus routes --

SELECT  COUNT(*),Bus FROM students GROUP BY Bus;

-- Task 12 Display the total number of students for each bus routes. --

SELECT COUNT(*) AS Total_Students,Bus FROM students GROUP BY Bus;

-- Task 13 Display all the unique Grades. --

SELECT  COUNT(*) AS Unique_Grade,Grade FROM students GROUP BY Grade;

-- Task 14 Display the total number of students for each grades. --

SELECT COUNT(*) AS Total_no_of_Grade,Grade FROM list,teachers GROUP BY list.Grade; 

-- Task 15 Print all student with lowest bus route from highest grade level. --

SELECT StLastName,StFirstName,Grade,Bus FROM students ORDER BY Bus ASC; 
