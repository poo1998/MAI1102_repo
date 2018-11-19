-- creating studentsDB database
-- changing database to studentsdb	
-- import data from students.csv

CREATE DATABASE studentsdb;

USE studentsdb;

-- Question 1:

-- Display all columns data of all the rows from the students table ?

SELECT * FROM students;

-- Question 3:

-- Select all students whose FirstName is exactly five characters long from the students table ?

SELECT * FROM students WHERE FirstName LIKE "_____";

-- Question 2:

-- Display last name and first name of all the students from the students table ?

SELECT lastName, FirstName FROM students;

-- Question 2:

-- Display last name and first name of all the students from the students table ?

SELECT  FirstName FROM students;

-- Question 1:

-- Select all students, that have Grade 1  from the students table ?

SELECT * FROM students WHERE Grade = 1;

-- Question 2:

-- Select all students, that have Grade 0 from the students table ?

SELECT * FROM students WHERE Grade = 0;

-- Question 1:

-- Select all the students, that have not Grade 0 from the students table ?

SELECT * FROM students WHERE Grade != 0;
-- Question 2:

-- Select all the students for whom the Grade is less than 4 from the students table ?

SELECT * FROM students WHERE Grade < 4;

-- Question 1:

-- Select all students whose FirstName contains at least one e character from the students table ?

SELECT * FROM students WHERE FirstName LIKE "%e%";

-- Question 2:

-- Select all animals whose LastName ends with ‘a’  from the students table ?

SELECT * FROM students WHERE LaststName LIKE "%a";

-- Question 1:
-- Select only those students  from the students table ? 
-- that:
--
 -- •	have a FirstName exactly five characters long

-- •	have a Grade more than 2

SELECT * FROM students WHERE FirstName LIKE "_____" AND Grade >2;

-- Question 1:

-- Select students that have Grade 1,and all the students that have classroom 102 from the students table ?

SELECT * FROM students WHERE Grade LIKE 1 AND Classroom = 102;

-- Question 1:

-- Select all the students whose Classroom is any of these: 
-- 101, 108, 102, 105, 107 from the students table ?

SELECT * FROM students WHERE Classroom In (101,108.102,105,107);

-- Question 1:

-- Select all the FirstName that are not 5 characters long  from the students table ?


SELECT * FROM students WHERE FIrstName NOT LIKE "_____";

-- Select all the students where Grade is null?

SELECT * FROM students WHERE Grade IS NULL;

-- Select all the students where Grade is between 1 to 5?

SELECT * FROM students WHERE Grade BETWEEN 1 and 5;

-- sort all the students according to their Classroom.

SELECT * FROM students ORDER BY Classroom desc;


