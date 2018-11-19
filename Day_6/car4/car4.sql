
CREATE DATABASE car4db;

USE car4db;

-- Find all Reanults (’renault’) in the database.

SELECT 
    car_names.model
FROM
    car_names
WHERE
    car_names.model LIKE '%renault%';

-- 1. 
-- For CountryId '4' car maker report
-- the best mileage per gallon of a car produced by it and the average
-- acceleration.

SELECT 
    car_makers.maker,
    cars_data.accelerate,
    MAX(cars_data.MPG),
    AVG(cars_data.Accelerate)
FROM
    cars_data,
    car_makers
WHERE
    car_makers.Country = 4;

 -- 2. 
-- Display 4-cylinder car models that are lighter than 4000 lbs
-- acceleration better than 14 seconds.

SELECT 
    cars_data.cylinders, cars_data.Weight, cars_data.accelerate
FROM
    cars_data
WHERE
    cars_data.cylinders = 4
        AND cars_data.Weight < 4000
        AND cars_data.accelerate < 14;

-- 3. 
-- For each year report the
-- best, the worst and the average gas milage of a toyota vehicle. Report
-- results in chronological order.

SELECT 
    cars_data.MPG,
    cars_data.year,
    car_names.model,
    MAX(cars_data.MPG),
    MIN(cars_data.MPG),
    AVG(cars_data.MPG)
FROM
    cars_data,
    car_names
WHERE car_names.Id=cars_data.Id
	AND car_names.model LIKE '%toyota%'
GROUP BY cars_data.year
ORDER BY cars_data.year ASC;

-- 4. 
-- For each year when ford manufactured cars averaged less than 100
-- horsepowers, report the highest  and the lowest engine displacement
-- number. Sort in chronological order.


SELECT 
    car_names.model,
    cars_data.year,
    cars_data.Horsepower,
    MIN(cars_data.Edispl),
    MAX(cars_data.Edispl)
FROM
    cars_data,
    car_names
WHERE
    car_names.Id = cars_data.Id
        AND car_names.model LIKE '%ford%'
        AND cars_data.Horsepower < 100
GROUP BY cars_data.year
ORDER BY cars_data.year ASC; 

-- 1.                                                          
-- Report all buick model with the best acceleration. For each vehicle, report
-- its full name and the year of production with Ascending order withAcceleration.

SELECT 
    car_makers.FullName,
    car_names.model,
    cars_data.year,
    cars_data.accelerate,
    MAX(cars_data.accelerate)
FROM
    car_makers,
    car_names,
    cars_data
WHERE
    car_makers.Id = cars_data.Id
        AND car_names.model LIKE '%buick%'
GROUP BY car_names.model
ORDER BY cars_data.accelerate ASC;

-- 2. 
-- Among the vehicles with the best acceleration, report the most powerful
-- (horsepower) one. Report full name and the year of production.

SELECT 
    cars_data.Accelerate,
    MAX(cars_data.Horsepower),
    car_makers.FullName,
    cars_data.year
FROM
    cars_data,
    car_makers
WHERE
    car_makers.id = cars_data.id
GROUP BY car_makers.FullName;

-- 3. 
-- Find the Models from 1976, 
-- Models had the best average gas milage. Report the Model,


SELECT 
    car_names.model,
    cars_data.year,
    cars_data.mpg,
    MAX(cars_data.MPG)
FROM
    cars_data,
    car_names
WHERE
    car_names.Id = cars_data.Id
        AND cars_data.year = 1976
GROUP BY car_names.model;

-- 4. 
-- For chevrolet model in 1978 display Model, Cylinders abd Acceleration whose have more than 100 engine displacement.

SELECT 
    car_names.model,
    cars_data.Cylinders,
    cars_data.Accelerate,
    cars_data.Edispl,
    cars_data.year
FROM
    car_names,
    cars_data
WHERE
    car_names.id = cars_data.id
        AND car_names.model LIKE '%chevrolet%'
        AND cars_data.year = 1978
        AND cars_data.Edispl > 100;

-- 5. 
-- Find the most fuel-efficient 8-cylinder model. Report the full name of
-- the car model, the year it was produced and the weight.


SELECT 
    car_makers.fullname, cars_data.year, cars_data.weight
FROM
    car_makers,
    cars_data
WHERE
    car_makers.id = cars_data.Id
        AND cars_data.cylinders = 8;


-- 6. 
-- Find the difference in gas milage between the most fuel-efficient

SELECT 
    MAX(cars_data.MPG),
    cars_data.cylinders,
    cars_data.accelerate
FROM
    cars_data;

-- 7-
-- cylinder model and the least fuel-efficient 8-cylinder model. Report
-- just the number.

SELECT 
    car_names.model, cars_data.cylinders
FROM
    cars_data,
    car_names
WHERE
    car_names.Id = cars_data.Id
        AND cars_data.cylinders = 8;


-- 8. For each Model report the number of 4-cylinder models its models
-- have produced in the 1970s which have higher horsepower than some
-- cylinder model also produced in the 1970s.

SELECT 
    car_names.model,
    cars_data.year,
    MAX(cars_data.horsepower),
    cars_data.Cylinders
FROM
    car_names,
    cars_data
WHERE
    car_names.id = cars_data.Id
        AND cars_data.Cylinders = 4
        AND cars_data.year = 1970
GROUP BY cars_data.year;










