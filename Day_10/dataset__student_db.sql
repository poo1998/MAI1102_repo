-- *****************          dataset students database            ***************** 

-- 1. find the students lastname with 3 characters  from end

SELECT Stlastname,RIGHT(Stlastname,3) AS trimmed_Stlastname from students2db.student2;


-- 2. find the students lastname with 3 characters  from starting

SELECT Stlastname,LEFT(Stlastname,3) AS trimmed_Stlastname from students2db.student2;


-- 3. remove the EX from the last name of all the students

SELECT 
    students2db.student2.StLastName,
    TRIM(TRAILING 'EX' FROM students2db.student2.StLastName) AS trimed_Stlastname
FROM
    students2db.student2;

-- 4. find the location of 'N' in students lastname

SELECT 
    students2db.student2.StLastName,
    POSITION('N' IN students2db.student2.StLastName) AS position_of_N
FROM
    students2db.student2;
	
-- 5. get the substring from index 4 to 2 characters from lastname column

SELECT 
    students2db.student2.StLastName,
    SUBSTRING(students2db.student2.StLastName,
        4,
        2)
FROM
    students2db.student2;
    
    
-- 6. find the sum of students grade and print the average grade from all the classrooms

SELECT 
    AVG(sum_of_grade) AS avg_of_grade
FROM
    (SELECT 
        SUM(grade) AS sum_of_grade
    FROM
        students2db.student2
    GROUP BY students2db.student2.Classroom) Grade_table;

-- 7. show all the classroom id those teachers associated and also in which student studies

SELECT 
    students4db.list.classroom
FROM
    students4db.list
        RIGHT JOIN
    students4db.teachers ON students4db.list.classroom = students4db.teachers.classroom/
    
UNION

SELECT 
    students4db.list.classroom
FROM
    students4db.list
        LEFT JOIN
    students4db.teachers ON students4db.list.classroom = students4db.teachers.classroom;

-- 8.display the students who goes with the same bus route 

SELECT students4db.list.Bus




