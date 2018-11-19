CREATE DATABASE students2db;

USE students2db;

SELECT * FROM students2;

-- Display How many students are there in students table ?

SELECT COUNT(*) FROM students2;


-- 2. Display the average grade of students from students table ?


SELECT AVG(Grade) FROM students2;

-- 3. Display the maximum grade from students table ?


SELECT MIN(Grade) FROM students2;

-- 3. Display the minimum grade from students table ?


SELECT MAX(Grade) FROM students2;

 
-- 5. Display the count of students for each grade from students table ?

SELECT COUNT(*) as Total_Student,Grade FROM students2 GROUP BY Grade;

-- 6. Display average grade for classroom 101 or 102 from students table ?

SELECT AVG(Grade) FROM students2 WHERE Classroom IN (101,102);

-- 7. Display the maximum grade of each classroom from students table ?

SELECT MAX(Grade),Classroom FROM students2
GROUP BY classroom; 

-- 8. Display the minimum grade of each classroom from students table ?

SELECT MIN(Grade),Classroom FROM students2
GROUP BY classroom;

 
-- 9. Display count of every classroom from students table and sort them by count ?

 SELECT COUNT(*),Classroom FROM Students2 GROUP BY Classroom ORDER BY COUNT(*);
 
 -- 10. Display average grade for each classroom from students table in descending order ?

 SELECT AVG(Grade),Classroom FROM Students2 GROUP BY Classroom ORDER BY AVG(Grade) DESC;

-- 11. Display the maximum grade of each classroom from students table and sort them by maximum grade ?

SELECT MAX(Grade),Classroom FROM Students2 GROUP BY Classroom ORDER BY MAX(Grade);

-- 12. Display the minimum grade of each classroom from students table in descending order ?

SELECT MIN(Grade),Classroom FROM Students2 GROUP BY Classroom ORDER BY MIN(Grade);

 
-- 13. Display the grade, Firstname, Lastname and classroom of top 3 students according to their grade from students table ?






 
 







