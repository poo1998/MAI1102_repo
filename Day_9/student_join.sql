-- insertng necessary data for join queries

-- Insert into teachers values('gurmeet', 'parmar', 119);

INSERT INTO students4db.teachers VALUES('gurmeet', 'parmar', 119);

-- Insert into list (stlastname, stfirstname, grade, Bus) 
-- values('vaid', 'mustafa', 9,50);

INSERT INTO students4db.list(lastname, firstname, grade, Bus) VALUES('vaid', 'mustafa', 9,50);

-- write an sql query to make the cartesian product between teachers and list 
-- i.e. each teachers will appear for all students and vice versa.

SELECT 
    students4db.teachers.FirstName AS T_firstName,
    students4db.students.FirstName AS S_firstName,
    students4db.students.LastName AS S_lastName,
    students4db.students.Classroom,
    students4db.students.Grade
FROM
    students4db.teachers
        CROSS JOIN
    students4db.students;


-- write an sql query to make report of tlastname,tfirstname, stlastname,stfirstname, grade, 
-- bus  for teachers who are having students and students who does not associated with any of teacher.

SELECT 
    students4db.teachers.FirstName AS tlastname,
    students4db.teachers.LastName AS tlastname,
    students4db.students.FirstName AS stfirstname,
    students4db.students.LastName AS stlastname,
    students4db.students.Grade
FROM
    students4db.students
        LEFT JOIN
    students4db.teachers ON students4db.students.Classroom = students4db.teachers.Classroom;


-- write an sql query to make report of tlastname,tfirstname, stlastname,stfirstname, grade, bus  
-- for students who are having teachers and teachers who does not associated with any of students.

SELECT 
    students4db.teachers.FirstName AS tlastname,
    students4db.teachers.LastName AS tlastname,
    students4db.students.FirstName AS stfirstname,
    students4db.students.LastName AS stlastname,
    students4db.students.Grade
FROM
    students4db.students
        LEFT JOIN
    students4db.teachers ON students4db.students.Classroom = students4db.teachers.Classroom;

-- write an sql query to make report of tlastname,tfirstname, stlastname,stfirstname, grade, bus  
-- for students who are having teachers or not associated with any teachers and students 
-- who does not associated with any of teachers also.

SELECT 
    students4db.teachers.FirstName AS tlastname,
    students4db.teachers.LastName AS tlastname,
    students4db.students.FirstName AS stfirstname,
    students4db.students.LastName AS stlastname,
    students4db.students.Grade
FROM
    students4db.students
        LEFT JOIN
    students4db.teachers ON students4db.students.Classroom = students4db.teachers.Classroom
    
UNION

SELECT 
    students4db.teachers.FirstName AS tlastname,
    students4db.teachers.LastName AS tlastname,
    students4db.students.FirstName AS stfirstname,
    students4db.students.LastName AS stlastname,
    students4db.students.Grade
FROM
    students4db.students
        RIGHT JOIN
    students4db.teachers ON students4db.students.Classroom = students4db.teachers.Classroom;
