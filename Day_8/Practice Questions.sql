USE studentdb;

USE airlinesdb;

-- Q 1. Given a student’s last name, find the student’s grade, classroom .

SELECT 
    studentdb.students.Grade, students.Classroom
FROM
    studentdb.students
WHERE
    studentdb.students.StLastName = 'COOKUS';

-- Q 2. Given a student’s last name, find the bus route the student takes

SELECT 
    studentdb.students.Bus
FROM
    studentdb.students
WHERE
    studentdb.students.StLastName = 'COOKUS';

-- Q 3. Find all students at a specified grade level

SELECT DISTINCT
    (studentdb.students.Grade) AS Grade
FROM
    studentdb.students;

-- Q 4. For each entry found, print the last name, first name, grade, classroom 

SELECT 
    studentdb.students.StLastName,
    studentdb.students.StFirstName,
    studentdb.students.Grade,
    studentdb.students.Classroom
FROM
    studentdb.students; 

-- Q 5. Display the total number of students for each bus routes

SELECT 
    COUNT(studentdb.students.StFirstName) AS total_students, students.Bus
FROM
    studentdb.students
GROUP BY studentdb.students.Bus;

-- Q 6. Display the total number of students for each grades

SELECT 
    COUNT(studentdb.students.StFirstName) AS total_students,
    studentdb.students.Grade
FROM
    studentdb.students
GROUP BY studentdb.students.Grade;

-- Q 7. Find all cars produced by Volvo between 1977 and 1981 (inclusive)

SELECT 
    carsdb.car_names.Model,
    carsdb.car_names.Make,
    carsdb.cars_data.year
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.cars_data.year BETWEEN 1977 AND 1981
        AND carsdb.car_names.Model = 'Volvo';

-- Q 8. Display all columns data of all the rows from the flights table ?

SELECT 
    *
FROM
    airlinesdb.flights;

-- Q 9. Display source and destination airport  from flights table ?

SELECT 
    airlinesdb.flights.SourceAirport,
    airlinesdb.flights.DestAirport
FROM
    airlinesdb.flights;

-- Q 10.Select all flights whose airline number is 3 or 5 from flights table ?

SELECT 
    airlinesdb.flights.DestAirport, airlinesdb.flights.Airline
FROM
    airlinesdb.flights
WHERE
    airlinesdb.flights.Airline IN (3 , 5); 

-- Q 11.Display  all airline code  from flights table ?

SELECT 
    airlinesdb.flights.Airline
FROM
    airlinesdb.flights;

-- Q 12.Select all flights whose airline number is 3 from flights table ?

SELECT 
    airlinesdb.flights.DestAirport, airlinesdb.flights.Airline
FROM
    airlinesdb.flights
WHERE
    airlinesdb.flights.Airline = 3;


