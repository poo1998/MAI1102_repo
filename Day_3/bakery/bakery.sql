
-- 1. creating goodsDB database

CREATE DATABASE bakerydb;

use bakerydb;
	
-- 3. import data from bakery.csv
-- 4. SQL operators

-- Question 1:
-- Display all columns data of all the rows from the goodstable ?

SELECT * FROM bakerydb.goods;

-- Question 2:
-- Display goods and their price code from goods table ?

SELECT price FROM bakerydb.goods;

-- Question 3:
-- Display full  of all goods from goods table ?

SELECT Food FROM bakerydb.goods;

-- 5. SQL WHERE operators

-- Question 1:
-- Select all goods whose price is 3.25 from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE price = 3.25;

-- Question 2:
-- Select all goods whose price is 3.25 or 8.95 from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE price IN (3.25,8.95);

-- 6. SQL WHERE with comparison operators

-- comparison operators
-- =	  Equals to
-- <>	not equals to
-- !=	not equals to
-- <	  Less than
-- <=	Less-equal than
-- >	  Greater than
-- >=	Greater-equal than


-- Question 1:
-- Select all goods  who price is not 3.25 or 8.95 from goods table ?

SELECT Food,Flavor,price FROM bakerydb.goods WHERE Price !=3.25 AND Price !=8.75;

-- Question 2:
-- Select all goods   whose price is greater than 3 from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE Price >3;

-- 7. SQL WHERE clause with LIKE operator
-- Question 1:
-- Select all food names   where first letter  h from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE Food LIKE "h%";

-- Question 2:
-- Select all food   whose food name ends  with rt from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE Food LIKE "%rt";

-- Question 3:
-- Select all food names which having   exactly 4 characters from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE Food LIKE "____";

-- 8. SQL WHERE clause with AND logical operator
-- Question 1:
-- SQL WHERE clause with OR logical operator

-- AND returns every row where all the conditions are true.
-- OR returns every row where at least one of the conditions is true.

-- Question 1:
-- Select all food names   who has price greater than 3 or who   ends with ke from goods table ?

SELECT Food,Flavor FROM bakerydb.goods WHERE Price >3 AND Food LIKE "%ke";

SELECT Food,Flavor FROM bakerydb.goods WHERE Price >3 OR Food LIKE "%ke";

-- 9. SQL IN operator

-- Question 1:
-- Select all goods whose price code are 3.25,8.95,3.75 from goods table ?

SELECT Food,Flavor,price FROM bakerydb.goods WHERE Price  IN (3.25, 8.95,3.75);


-- 10. The SQL NOT operator
-- Question 1:
-- Select all the food names that are not 4 characters long from goods table ?

SELECT Food ,Flavor FROM bakerydb.goods WHERE Food NOT LIKE "____";


-- 11. The SQL  IS NULL operator
-- Select all goods   where price is null?
SELECT Food ,Flavor FROM bakerydb.goods WHERE price IS NULL;


-- 12. The SQL BETWEEN operator
-- Select all goods   whose price code between 3.25 and 8.95 from goods table ?

SELECT Food,Flavor,Price FROM bakerydb.goods WHERE Price BETWEEN 3.25 AND 8.89;

-- 13. The SQL ORDER BY operator
-- sort goods table with their price code?

SELECT * FROM bakerydb.goods ORDER BY price ASC;








