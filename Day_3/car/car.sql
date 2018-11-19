-- creating zooDB database--

CREATE DATABASE cardb;

USE cardb;

-- 2. changing database to zoodb use carDB; --

-- 3. import data from carmakers.csv--

-- 4. SQL operators

-- Question 1:
-- Display all columns data of all the rows from the carmakers table ?--

SELECT * FROM cardb.carmakers;

-- Question 2:
-- Display car makers and their country code from carmakers table ?--


-- Question 3:
-- Display fullName of all car makers from carmakers table ?--

SELECT FullName FROM cardb.carmakers;


-- 5. SQL WHERE operators

-- Question 1:
-- Select all carmakers name who has country code 4 from carmakers table ?--

SELECT maker FROM cardb.carmakers WHERE country = 4;

-- Question 2:
-- Select all carmakers name who has country code 2 and 5 from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE country IN (2,5);

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
-- Select all carmakers name who does not have  country code 2 and 5 from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE country !=2 AND 5;

-- Question 2:
-- Select all carmakers name whose country code is greater than 2 from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE country >2;

-- 7. SQL WHERE clause with LIKE operator

-- Question 1:
-- Select all carmakers name whose name contains first letter as h from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE maker LIKE "h%";

-- Question 2:
-- Select all carmakers name whose fullName ends with da from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE FullName LIKE "%da";

-- Question 3:
-- Select all carmakers name whose name exactly 4 characters from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE maker LIKE "____";

-- 9. SQL WHERE clause with OR logical operator


-- AND returns every row where all the conditions are true.
-- OR returns every row where at least one of the conditions is true.

-- Question 1:
-- Select all carmakers name who has country code 2 or whose name ends with en from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE country = 2 OR maker LIKE "%en";

-- 10. SQL IN operator

-- Question 1:
-- Select all carmakers name whose country code are 2,3,4,5 from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE country IN (2,3,4,5);

-- 11. The SQL NOT operator
-- Question 1:
-- Select all the makers that are not 4 characters long from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE maker NOT LIKE "____";

-- 12. The SQL  IS NULL operator
-- Select all carmakers name where country code is null?

SELECT maker FROM cardb.carmakers WHERE country LIKE "NULL";

-- 13. The SQL BETWEEN operator
-- Select all carmakers name whose country code between 2 and 5 from carmakers table ?

SELECT maker FROM cardb.carmakers WHERE country BETWEEN 2 AND 5;

-- 14. The SQL ORDER BY operator
-- sort carmakers table with their country code?

SELECT * FROM cardb.carmakers ORDER BY country ASC;











































