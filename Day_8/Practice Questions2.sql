
-- Q 12. Select all flights whose airline number is 3 from ?

SELECT 
    airlinesdb.flights.DestAirport, airlinesdb.flights.Airline
FROM
    airlinesdb.flights
WHERE
    airlinesdb.flights.Airline = 3;

-- Q 13. Display count of every Food from goods table ?

SELECT 
    COUNT(goodsdb.goods.Food) AS total_food, goodsdb.goods.Food
FROM
    goodsdb.goods
GROUP BY goodsdb.goods.Food;
   
-- Q 14. Display How many entries are there in carmakers table ?

SELECT 
    COUNT(cardb.carmakers.Maker) AS total_entry
FROM
    cardb.carmakers; 

-- Q 15. Display average number of carmakers from country 2 ?

SELECT 
    AVG(cardb.carmakers.Maker) AS Average
FROM
    cardb.carmakers
WHERE
    cardb.carmakers.Country = 2;

-- Q 16. Display the total price of Each Flavour ?

SELECT 
    SUM(goodsdb.goods.Price) AS total_price, goodsdb.goods.food
FROM
    goodsdb.goods
GROUP BY goodsdb.goods.food;
 

-- Q 17. Display the maximum country code number ?

SELECT 
    MAX(cardb.carmakers.Country) AS max_country_code
FROM
    cardb.carmakers;

-- Q 18. Display the minimum country code number   ?

SELECT 
    MIN(cardb.carmakers.Country) AS max_country_code
FROM
    cardb.carmakers;
 
-- Q 19. Display average price for Cake or Eclair?

SELECT 
    AVG(goodsdb.goods.Price) AS avg_price
FROM
    goodsdb.goods
WHERE
    goodsdb.goods.Food = 'Eclair' OR 'Cake';

-- Q 20. Display the maximum price of each Food  ?

SELECT 
    MAX(goodsdb.goods.Price) AS max_price, goodsdb.goods.Food
FROM
    goodsdb.goods
GROUP BY goodsdb.goods.Food;
 

-- Q 21. Display average number of enrollment from campus 2 ?

SELECT 
    AVG(enrollmebtdb.enrollments.TotalEnrollment_AY)
FROM
    enrollmebtdb.enrollments
WHERE
    enrollmebtdb.enrollments.Campus = 2;

 -- Q 22. Display the maximum campus code number  ?

SELECT 
    MAX(enrollmebtdb.enrollments.Campus) AS max_campus_no
FROM
    enrollmebtdb.enrollments;


-- Q 23. Display the minimum price of each Flavour ?

SELECT 
    MIN(goodsdb.goods.Price) AS min_price, goodsdb.goods.Food
FROM
    goodsdb.goods
GROUP BY goodsdb.goods.Food;

-- Q 24. Display count of each Food, which have Chocolate Flavour , also arrange food's name in alphabetical order
 
SELECT 
    COUNT(goodsdb.goods.Food) AS total_food, goodsdb.goods.Food
FROM
    goodsdb.goods
WHERE
    goodsdb.goods.Flavor = 'Chocolate'
GROUP BY goodsdb.goods.Food
ORDER BY goodsdb.goods.Food;

-- Q 25. Display the minimum campus code number  ?

SELECT 
    MAX(enrollmebtdb.enrollments.Campus) AS max_campus_no
FROM
    enrollmebtdb.enrollments;

-- Q 26. Find all non-four cylinder cars produced in 1980 that have a better fuel economy better 
-- than 20 MPG and that accelerate to 60 mph faster than in 15 seconds. 

SELECT 
    carsdb.cars_data.Cylinders,
    carsdb.cars_data.Year,
    carsdb.cars_data.Accelerate,
    carsdb.cars_data.cylinders
FROM
    carsdb.cars_data
WHERE
		carsdb.cars_data.Year = 1980
        AND carsdb.cars_data.MPG >= 20
        AND carsdb.cars_data.Accelerate <= 15
        AND carsdb.cars_data.cylinders <> 4;

-- Q 27. Find all cars produced by Volvo between 1977 and 1981 (inclusive).
-- Report the name of the car and the year it was produced, sort output
-- in ascending order by the year.


SELECT 
    car3db.car_names.Make, car3db.cars_data.Year
FROM
    car3db.car_names,
    car3db.cars_data
WHERE
    car3db.car_names.Id = car3db.cars_data.Id
        AND car3db.cars_data.Year BETWEEN 1977 AND 1981
        AND car3db.car_names.Model LIKE '%Volvo%'
ORDER BY car3db.cars_data.Year;
 
 
-- Q 28. Display count of totalcsufee_AYs from every campus and sort them in ascending order
  
SELECT 
    SUM(csufeedb.csufee.CampusFee) AS count_of_totalcsufee_AYs,
    csufeedb.csufee.Campus
FROM
    csufeedb.csufee
GROUP BY csufeedb.csufee.Campus
ORDER BY csufeedb.csufee.Campus; 
  
 -- Q 29. Display totalcsufee_AY column from csufee table without duplicates
  
SELECT DISTINCT
    (csufeedb.csufee.CampusFee) AS csufee_AY,
    COUNT(csufeedb.csufee.CampusFee) AS totalcsufee_AY
FROM
    csufeedb.csufee
GROUP BY csufeedb.csufee.CampusFee
ORDER BY csufeedb.csufee.CampusFee; 
  
 -- Q 30. Display count of each car totalcsufee_AY , 
-- who have value of campus equal to or more than 3

SELECT 
    SUM(csufeedb.csufee.CampusFee) AS totalcsufee_AY,
    csufeedb.csufee.Campus
FROM
    csufeedb.csufee
WHERE
    csufeedb.csufee.Campus >= 3
GROUP BY csufeedb.csufee.Campus;

-- Q 31.Display average grade for each classroom from students table in descending order ?

SELECT 
    AVG(studentdb.students.Grade) AS max_grade,
    studentdb.students.Classroom
FROM
    studentdb.students
    
GROUP BY studentdb.students.Classroom
ORDER BY studentdb.students.Grade DESC;

-- Q 32. Display the maximum grade of each classroom from students table and sort them by maximum grade ?

SELECT 
    MAX(studentdb.students.Grade) AS max_grade,
    studentdb.students.Classroom
FROM
    studentdb.students
GROUP BY studentdb.students.Classroom
ORDER BY studentdb.students.Grade;

-- Q 33. Display the grade, Firstname, Secondname and classroom of top 3 students according to their grade 
  
SELECT 
    studentdb.students.StFirstName,
    studentdb.students.StLastName,
    
    studentdb.students.Grade,
    studentdb.students.Classroom
FROM
    studentdb.students
	
    ORDER BY studentdb.students.Grade DESC 
    

	LIMIT 3;
  
 -- Q 34. Display the total price of each Flavour from goods table and sort them by price ?

SELECT
	goodsdb.goods.Food,
    SUM(goodsdb.goods.Price) AS total_price
    
FROM
    goodsdb.goods 
    GROUP BY goodsdb.goods.Food
    ORDER BY goodsdb.goods.Price;  
  
-- Q 35. Display average price for each Food from goods table and sort them by average price ?
  
SELECT 
    AVG(goodsdb.goods.Price) AS avg_price,
    goodsdb.goods.Food
FROM
    goodsdb.goods 
    GROUP BY goodsdb.goods.Food
    ORDER BY goodsdb.goods.Price;
 

