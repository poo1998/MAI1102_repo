-- insertng necessary data for join queries

-- Insert into car_names values(407, 'aston martin', 'aston');

INSERT INTO car3db.car_names(Id,model,make) VALUES(407, 'aston martin', 'aston');

-- Insert into cars_data (MPG, Cylinders, Edispl, Horsepower, weight, accelerate, year)
-- values(14, 5, 56,120,1800,9.0,2013);

INSERT INTO car3db.cars_data(MPG, Cylinders, Edispl, Horsepower, weight, accelerate, year) VALUES(14, 5, 56,120,1800,9.0,2013);

-- write an sql query to make the cartesian product between car_names and cars_data 
-- i.e. each car_names will appear for all cars_data and vice versa.

SELECT 
    car3db.car_names.Model,
    car3db.cars_data.Accelerate,
    car3db.cars_data.Cylinders,
    car3db.cars_data.Edispl,
    car3db.cars_data.Horsepower,
    car3db.cars_data.Id,
    car3db.cars_data.MPG,
    car3db.cars_data.MPG,
    car3db.cars_data.Weight,
    car3db.cars_data.Year
FROM
    car3db.car_names
        CROSS JOIN
    car3db.cars_data;

-- write an sql query to make report of model, make, MPG, cyllenders  for car_names 
-- who are having cars_data and car_names who does not associated with any of cars_data.

SELECT 
    car3db.car_names.Model,
    car3db.car_names.Make,
    car3db.cars_data.MPG,
    car3db.cars_data.Cylinders
FROM
    car3db.car_names
        LEFT JOIN
    car3db.cars_data ON car3db.cars_data.Id=car3db.car_names.Id;

-- write an sql query to make report of model, make, MPG, cyllenders  for car_names 
-- who are having cars_data and car_names who does not associated with any of cars_data.

SELECT 
    car3db.car_names.Model,
    car3db.car_names.Make,
    car3db.cars_data.MPG,
    car3db.cars_data.Cylinders
FROM
    car3db.car_names
        LEFT JOIN
    car3db.cars_data ON car3db.cars_data.Id=car3db.car_names.Id;

-- write an sql query to make report of model, make, MPG, cyllenders  for cars_data 
-- who are having cars_data or not associated with any car_names and car_names 
-- who does not associated with any of cars_data also.
SELECT 
    car3db.car_names.Model,
    car3db.car_names.Make,
    car3db.cars_data.MPG,
    car3db.cars_data.Cylinders
FROM
    car3db.car_names
        LEFT JOIN
    car3db.cars_data ON car3db.cars_data.Id=car3db.car_names.Id
    
UNION

SELECT 
    car3db.car_names.Model,
    car3db.car_names.Make,
    car3db.cars_data.MPG,
    car3db.cars_data.Cylinders
FROM
    car3db.car_names
        RIGHT JOIN
    car3db.cars_data ON car3db.cars_data.Id=car3db.car_names.Id;



