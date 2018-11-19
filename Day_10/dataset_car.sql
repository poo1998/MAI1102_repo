

-- *****************          dataset car            ***************** 

-- 1. find the model name of the cars which is  3 characters  from end
SELECT 
    carsdb.car_names.model, RIGHT(carsdb.car_names.model, 3) AS trimmed_model
FROM
    carsdb.car_names;
    
-- 2. find the model name of the cars which is  3 characters  from starting   
SELECT 
    carsdb.car_names.model, LEFT(carsdb.car_names.model, 3) AS trimmed_model
FROM
    carsdb.car_names;
    
-- 3. remove the rd from the model name  of all the car names

SELECT 
    carsdb.car_names.model,
    TRIM(TRAILING 'rd' FROM carsdb.car_names.model) AS trimmed_model
FROM
    carsdb.car_names;

-- 4. find the location of 'r' in model name of cars

SELECT 
    carsdb.car_names.model,
    POSITION('r' IN carsdb.car_names.model)AS position_of_r
FROM
    carsdb.car_names;

-- 5. get the substring from index 4 to 2 characters from model name 

SELECT 
    carsdb.car_names.model, SUBSTR(carsdb.car_names.model, 4, 2)
FROM
    carsdb.car_names;

--  if you wanted to take the sums of several columns, then average all of those values, you’d need to do each aggregation in a distinct step.

-- 6. find the sum of mpg and also print the average mpg  from all the years of car data

SELECT 
    AVG(sum_of_mpg) AS avg_of_mpg
FROM
    (SELECT 
        SUM(carsdb.cars_data.mpg) AS sum_of_mpg
    FROM
        carsdb.cars_data
    GROUP BY carsdb.cars_data.year) Mpg_table;

-- 7.  show all the car ids those has modelname or not registered as a model in car_names table


-- 8. display the cars who has  same horse power from cars_data



 





