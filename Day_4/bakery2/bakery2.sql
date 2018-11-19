-- creating bakeryDB database

CREATE DATABASE bakery2db;

-- changing database to bakeryDB

-- import data from goods.csv

USE bakery2db;

-- Questions :

-- 1. Display How many Chocolate Flavoured Foods are there in goods table ?

SELECT COUNT(*) AS flavor FROM bakery2db.goods2;

-- 2. Display the total price of Foods which are Apple Flavoured from goods table ?

SELECT SUM(price) AS total_price_of_apple FROM bakery2db.goods2  WHERE flavor = "apple";

-- 3. Display average amount of cake Flavoured Foods from goods table ?

SELECT AVG(price) AS avg_of_cake_flavor_food FROM bakery2db.goods2 WHERE Food = "cake";

-- 4. Display the maximum price from goods table ?

SELECT MAX(price) FROM bakery2db.goods2;


-- 5. Display the minimum price from goods table ?

SELECT MIN(price) FROM bakery2db.goods2;

-- Questions :

-- 1. Display count of every Food from goods table ?

SELECT COUNT(*) AS total_flavor,food FROM bakery2db.goods2 GROUP BY food;


-- 2. Display the total price of Each Flavour from goods table  ?

SELECT SUM(price) AS total_price ,flavor FROM bakery2db.goods2 GROUP BY flavor;

-- 3. Display average price for Cake or Eclair from goods table ?

SELECT AVG(price) AS average_price,Food FROM bakery2db.goods2 WHERE Food = "eclair" OR Food = "cake" GROUP BY Food;

-- 4. Display the maximum price of each Food from goods table ?

SELECT MAX(price) AS max_price,Food FROM bakery2db.goods2 GROUP BY Food;

-- 5. Display the minimum price of each Flavour from goods table ?

SELECT MIN(price) AS max_price,Food FROM bakery2db.goods2 GROUP BY Food;

-- Questions :
-- 1. Display count of every Food from goods table and sort them by count ?

SELECT COUNT(*) AS total_food ,food FROM bakery2db.goods2 GROUP BY Food ORDER BY COUNT(Food) ASC;

-- 2. Display the total price of each Flavour from goods table and sort them by price ?

SELECT SUM(price) AS total_price,flavor FROM bakery2db.goods2 GROUP BY Flavor ORDER BY SUM(Price) ASC;

-- 3. Display average price for each Food from goods table and sort them by average price ?

SELECT AVG(price) AS avg_price,food FROM  bakery2db.goods2 GROUP BY Food ORDER BY AVG(price) ASC;

-- 4. Display the maximum price of each Food from goods table and sort them by maximum price ?

SELECT MAX(price) AS max_price,food FROM  bakery2db.goods2 GROUP BY Food ORDER BY MAX(price) ASC;

-- 5. Display the minimum price of each Flavour from goods table and sort them by minimum price ?

SELECT MIN(price) AS max_price,food FROM  bakery2db.goods2 GROUP BY Food ORDER BY MIN(price) ASC;

-- Questions :

-- 1. Display count of every Food from goods table in descending order ?

SELECT COUNT(*) AS total_food,food FROM bakery2db.goods2 GROUP BY Food ORDER BY COUNT(food) DESC;

-- 2. Display the total price of each Flavour from goods table in descending order ?

SELECT SUM(price) AS total_price,flavor FROM bakery2db.goods2 GROUP BY flavor ORDER BY COUNT(price) DESC;

-- 3. Display average price for each Food from goods table in descending order ?

SELECT AVG(price) AS avg_price,food FROM bakery2db.goods2 GROUP BY food ORDER BY AVG(price) DESC;

-- 4. Display the maximum price for each food from goods table in descending order ?

SELECT MAX(price) AS max_price,food FROM bakery2db.goods2 GROUP BY food ORDER BY MAX(price) DESC;


-- 5. Display the minimum price for each food from goods table in descending order ?

SELECT MIN(price) AS min_price,food FROM bakery2db.goods2 GROUP BY food ORDER BY MIN(price) DESC;

-- Question :
-- 1. Display Flavour column from goods table without duplicates ?

SELECT DISTINCT(flavor) FROM bakery2db.goods2;

-- Question :

-- 1. Display count of each Food, 
-- which have Chocolate Flavour , also arrange food's name in alphabetical order ?

SELECT COUNT(food) AS total_food,food FROM bakery2db.goods2 WHERE flavor LIKE "chocolate" GROUP BY food ORDER BY food ASC;











