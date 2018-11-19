CREATE DATABASE carsdb;

USE carsdb;

-- Find all Reanults (’renault’) in the database. 
-- For each, report the name and the year. 
-- Sort output by year.


SELECT 
    carsdb.car_names.Model, carsdb.cars_data.Year
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.car_names.Model LIKE '%Renault%'
ORDER BY carsdb.cars_data.Year;


-- Find all cars produced by Volvo between 1977 and 1981 (inclusive).
-- Report the name of the car and the year it was produced, sort output
-- in ascending order by the year.

SELECT 
    carsdb.car_names.make,
    carsdb.cars_data.year
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.car_names.model LIKE '%volvo%'
ORDER BY carsdb.cars_data.year;
   

-- Find all non-four cylinder cars produced in 1980 that have a better
-- fuel economy better than 20 MPG and that accelerate to 60 mph faster
-- than in 15 seconds. 
-- Report the name of the car and the name of the automaker.

SELECT 
    carsdb.car_names.Model,
    carsdb.car_names.make,
    carsdb.cars_data.year
FROM
    
    carsdb.car_names,
    carsdb.cars_data
WHERE carsdb.car_names.Id = carsdb.cars_data.Id 
			AND carsdb.cars_data.Cylinders <> 4
            AND carsdb.cars_data.Year = 1980
            AND carsdb.cars_data.Accelerate >= 15
            AND carsdb.cars_data.MPG >= 20
            AND carsdb.cars_data.Horsepower>60; 



-- For each saab released after 1978, compute the average of horsepowers. 
-- Report the full name of the car, the year it was produced and the average sorted in descending order.


SELECT 
    carsdb.cars_data.year,
    carsdb.car_names.Make,
    AVG(carsdb.cars_data.Horsepower) AS avg_of_horsepower
    
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.cars_data.year<=1978 AND car_names.Model LIKE "%saab%"
        GROUP BY carsdb.cars_data.year
        ORDER BY carsdb.cars_data.year;

-- For each year in which honda produced models, report the
-- best, the worst and the average gas milage of a toyota vehicle. Report
-- results in chronological order.

SELECT 
    carsdb.cars_data.year,
    COUNT(carsdb.car_names.Model) AS total_model,
    carsdb.car_names.Model,
    MIN(carsdb.cars_data.MPG) AS min_avg,
    MAX(carsdb.cars_data.MPG) AS max_avg,
    AVG(carsdb.cars_data.MPG) AS average_of_MPG
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.car_names.Model LIKE '%honda%'
GROUP BY carsdb.cars_data.year;


-- Report all vehicles with  acceleration greater than 11  . For each vehicle, report
-- its full name and the year of production and sort the result with production year and secondary sort it by hourse power.

SELECT 
    carsdb.car_names.make,
    carsdb.cars_data.Accelerate,
    carsdb.cars_data.Year,
    carsdb.cars_data.Horsepower
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.cars_data.Accelerate >11
        
ORDER BY carsdb.cars_data.Year,
carsdb.cars_data.Accelerate,
     carsdb.cars_data.Horsepower;


-- Find the most fuel-efficient 8-cylinder model. Report the full name of
-- the car, the year it was produced.

SELECT 
    carsdb.cars_data.Year,
    carsdb.car_names.Make,
    MAX(carsdb.cars_data.MPG)
FROM
    carsdb.cars_data,
    carsdb.car_names
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.cars_data.Cylinders = 8
        GROUP BY carsdb.cars_data.Year
        ORDER BY carsdb.cars_data.MPG DESC;

-- Find all car names with at least one light
-- (weight less than 2000lbs) car between 1979 and 1981 (inclusively).
-- Output the full name of the company and Each company should be reported just once.

SELECT DISTINCT
    (carsdb.car_names.make) AS company,
    carsdb.car_names.make,
    carsdb.cars_data.year,
    carsdb.cars_data.Weight
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
    AND carsdb.cars_data.Weight < 2000
        AND carsdb.cars_data.Year BETWEEN 1979 AND 1981
ORDER BY carsdb.car_names.make;


 
-- For each saab released after 1978, compute the ratio between the
-- weight of the car and its number of horsepowers. 
-- Report the full name of the car, the year it was produced and the ratio sorted in descending
-- order by the ratio.

SELECT 
    carsdb.car_names.Make, carsdb.cars_data.year,carsdb.cars_data.Weight/carsdb.cars_data.Horsepower AS ratio
FROM
    carsdb.cars_data,
    carsdb.car_names
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
    AND carsdb.car_names.Model LIKE '%saab%' 
    AND carsdb.cars_data.year < 1978;


-- 1. 
-- For CountryId '4' car maker report
-- the best mileage per gallon of a car produced by it and the average
-- acceleration. 


SELECT 

    AVG(carsdb.cars_data.Accelerate) AS avg_of_accelerate,
    MAX(carsdb.cars_data.MPG)
FROM
    carsdb.car_makers,
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.model = carsdb.car_makers.maker and carsdb.car_names.id = carsdb.cars_data.id
        AND carsdb.car_makers.Country = 4;
-- 2. 
-- Display 4-cylinder car models that are lighter than 4000 lbs
-- acceleration better than 14 seconds.

SELECT 
    carsdb.cars_data.cylinders,
    carsdb.cars_data.Weight,
    carsdb.cars_data.Accelerate
FROM
    carsdb.cars_data
WHERE
    carsdb.cars_data.Cylinders = 4
        AND carsdb.cars_data.Accelerate <14
        AND carsdb.cars_data.Weight<4000;

-- 3. 
-- For each year report the
-- best, the worst and the average gas milage of a toyota vehicle. Report
-- results in chronological order.

SELECT 
    carsdb.cars_data.year,
    carsdb.car_names.Model,
    MIN(carsdb.cars_data.MPG) AS min_avg,
    MAX(carsdb.cars_data.MPG) AS max_avg,
    AVG(carsdb.cars_data.MPG) AS average_of_MPG,
    carsdb.car_names.Model
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.car_names.model LIKE '%toyota%'
GROUP BY carsdb.cars_data.Year
ORDER BY carsdb.cars_data.Year;

-- 4. 
-- For each year when ford manufactured cars averaged less than 100
-- horsepowers, report the highest and the lowest engine displacement
-- number. Sort in chronological order.

SELECT 
    carsdb.car_names.model,
    carsdb.cars_data.year,
    carsdb.cars_data.Horsepower,
    MIN(carsdb.cars_data.Edispl),
    MAX(carsdb.cars_data.Edispl)
FROM
    carsdb.cars_data,
    carsdb.car_names
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.car_names.model LIKE '%ford%'
        AND carsdb.cars_data.Horsepower < 100
GROUP BY carsdb.cars_data.year
ORDER BY carsdb.cars_data.year ASC;

-- 1. 
-- Report all buick model with the best acceleration. For each vehicle, report
-- its full name and the year of production with Ascending order withAcceleration.

SELECT 
    carsdb.car_makers.FullName,
    carsdb.car_names.model,
    carsdb.cars_data.year,
    carsdb.cars_data.accelerate,
    MAX(carsdb.cars_data.accelerate)
FROM
    carsdb.car_makers,
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_makers.Id = cars_data.Id
        AND carsdb.car_names.model LIKE '%buick%'
GROUP BY carsdb.car_names.model
ORDER BY carsdb.cars_data.accelerate ASC;

-- 2. 
-- Among the vehicles with the best acceleration, report the most powerful
-- (horsepower) one. Report full name and the year of production.

SELECT 
    carsdb.cars_data.Accelerate,
    MAX(carsdb.cars_data.Horsepower),
    carsdb.car_makers.FullName,
    carsdb.cars_data.year
FROM
    carsdb.cars_data,
    carsdb.car_makers
WHERE
    carsdb.car_makers.id = cars_data.id
GROUP BY carsdb.car_makers.FullName;


-- 3. 
-- Find the Models from 1976, 
-- Models had the best average gas milage. Report the Model,
-- the average gas milage.

SELECT 
    carsdb.car_names.model,
    carsdb.cars_data.year,
    carsdb.cars_data.mpg,
    MAX(carsdb.cars_data.MPG)
FROM
    carsdb.cars_data,
    carsdb.car_names
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.cars_data.year = 1976
GROUP BY carsdb.car_names.model;

-- 4. 
-- For chevrolet model in 1978 display Model, Cylinders abd Acceleration whose have more than 100 engine displacement.

SELECT 
    carsdb.car_names.model,
    carsdb.cars_data.Cylinders,
    carsdb.cars_data.Accelerate,
    carsdb.cars_data.Edispl,
    carsdb.cars_data.year
FROM
    carsdb.car_names,
    carsdb.cars_data
WHERE
    carsdb.car_names.id = carsdb.cars_data.id
        AND carsdb.car_names.model LIKE '%chevrolet%'
        AND carsdb.cars_data.year = 1978
        AND carsdb.cars_data.Edispl > 100;

-- 5. 
-- Find the most fuel-efficient 8-cylinder model. Report the full name of
-- the car model, the year it was produced and the weight.

SELECT 
    carsdb.car_makers.fullname, carsdb.cars_data.year,carsdb.cars_data.weight
FROM
    carsdb.car_makers,
    carsdb.cars_data
WHERE
    carsdb.car_makers.id = carsdb.cars_data.Id
        AND carsdb.cars_data.cylinders = 8;

-- 6. 
-- Find the difference in gas milage between the most fuel-efficient 8-
-- cylinder model and the least fuel-efficient 8-cylinder model. Report
-- just the number.

SELECT 
    MAX(carsdb.cars_data.MPG),
    carsdb.cars_data.cylinders,
    carsdb.cars_data.accelerate
FROM
    carsdb.cars_data;

-- 7. For each Model report the number of 4-cylinder models its models
-- have produced in the 1970s which have higher horsepower than some
-- cylinder model also produced in the 1970s.

SELECT 
    carsdb.car_names.model, carsdb.cars_data.cylinders
FROM
    carsdb.cars_data,
    carsdb.car_names
WHERE
    carsdb.car_names.Id = carsdb.cars_data.Id
        AND carsdb.cars_data.cylinders = 8;





