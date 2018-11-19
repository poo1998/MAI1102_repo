CREATE DATABASE customersdb;
USE customersdb;
-- 1. Display the first name, last name, city and state for 
-- all customers who live in the same state as customer number 177 (Customers table).

SELECT 
    customersdb.customers.FIRST_NAME,
    customersdb.customers.LAST_NAME,
    customersdb.customers.CITY,
    customersdb.customers.STATE
FROM
    customersdb.customers
WHERE
    customersdb.customers.STATE = (SELECT 
            customersdb.customers.STATE
        FROM
            customersdb.customers
        WHERE
            customersdb.customers.CUSTOMER_ID = 177);

-- 2. Display the package number, internet speed and sector number for all packages 
-- whose sector number equals to the sector number of package number 10 (Packages table).

SELECT 
    customer_table.PACK_ID,
    customer_table.SPEED,
    customer_table.SECTOR_ID
FROM
    (SELECT 
        customersdb.packages.PACK_ID,
		customersdb.packages.SPEED,
		customersdb.packages.SECTOR_ID
    FROM
        customersdb.packages
    )customer_table;

-- 3. Display the first name, last name and join date for all customers who joined the company
-- after customer number 200 (Customers table).

SELECT 
    customersdb.customers.FIRST_NAME,
    customersdb.customers.LAST_NAME,
    customersdb.customers.JOIN_DATE
FROM
    customersdb.customers
WHERE
    customersdb.customers.JOIN_DATE > (SELECT 
	customersdb.customers.JOIN_DATE
        FROM
            customersdb.customers
        WHERE
            customersdb.customers.CUSTOMER_ID=200);

	
-- 4. Display the first name, last name and join date for all customers who joined the 
-- company on the same month and on the same year 
-- as customer number 372 (Customers table).

SELECT 
    customersdb.customers.FIRST_NAME,
    customersdb.customers.LAST_NAME,
    DATE_FORMAT(`JOIN_DATE`,'%b %y') AS JOIN_DATE

FROM customersdb.customers WHERE DATE_FORMAT(`JOIN_DATE`,'%b %y') =
     (SELECT 
		DATE_FORMAT(`JOIN_DATE`,'%b %y') AS JOIN_DATE
            
        FROM
            customersdb.customers
        WHERE
            customersdb.customers.CUSTOMER_ID = 194);

	
-- 5. Display the first name, last name, city, state and package number for all customers whose internet speed is 
-- “5Mbps” (Customers and Packages table).

SELECT 
    customersdb.customers.FIRST_NAME,
    customersdb.customers.LAST_NAME,
    customersdb.customers.CITY,
    customersdb.customers.STATE,
    customersdb.customers.PACK_ID
FROM
    customersdb.customers,
    customersdb.packages
WHERE
    customersdb.customers.PACK_ID = customersdb.packages.PACK_ID
        AND customersdb.packages.SPEED = '1.5Mbps';
	
-- 6. Display the package number, internet speed and strt_date (the date it became available) for 
-- all packages who became available on 
-- the same year as package number 7 (Packages table).

SELECT 
    customer_table.STRT_DATE,
    customer_table.SPEED,
    customer_table.PACK_ID
FROM
    (SELECT 
        customersdb.packages.PACK_ID,
        customersdb.packages.STRT_DATE,
        customersdb.packages.SPEED
    FROM
        customersdb.packages
    WHERE
        customersdb.packages.PACK_ID = 2)customer_table;
   
-- 7. Display the first name, monthly discount, package number, main phone number and secondary phone number for all customers 
-- whose sector name is Business (Customers, Packages and Sectors tables).



	
-- 8. Display the first name, monthly discount and package number for all customers whose 
-- monthly payment is greater than the average 
-- monthly payment (Customers and Packages table).

SELECT 
    DISTINCT(customersdb.customers.FIRST_NAME),
    customersdb.packages.MONTHLY_PAYMENT,
    customersdb.customers.PACK_ID
FROM
    customersdb.customers,
    customersdb.packages
WHERE
    customersdb.packages.MONTHLY_PAYMENT > (SELECT 
            AVG(customersdb.packages.MONTHLY_PAYMENT) AS avg_of_monthly_payment
        FROM
            customersdb.packages)AND customersdb.packages.PACK_ID=customersdb.customers.PACK_ID;
            
            
-- 9. Display the first name, city, state, birthdate and monthly discount for all customers who was born on the 
-- same date as customer 
-- number 179, and whose monthly discount is greater than the monthly discount of customer number 107 (Customers table)
	
-- 10. Display all the data from Packages table for packages whose internet speed equals to the internet speed of package number 30, 
-- and whose monthly payment is greater than the monthly payment of package number 7 (Packages table).
	
-- 11. Display the package number, internet speed, and monthly payment for all packages whose monthly 
-- payment is greater than the maximum monthly payment of packages with internet speed equals to “5Mbps” 
-- (Packages table).
	
-- 12. Display  the package number, internet speed and monthly payment for all packages whose monthly payment is greater than 
-- the minimum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
	
-- 13. Display the package number, internet speed and monthly payment for all packages whose monthly payment is lower than the 
-- minimum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
	
-- 12. Display the first name, monthly discount and package number for all customers whose monthly discount is 
-- lower than the average monthly discount, and whose package number is the same as customer named “Kevin”
	

SELECT 
    customersdb.customers.FIRST_NAME,
    customersdb.customers.MONTHLY_DISCOUNT,
    customersdb.customers.PACK_ID
FROM
    customersdb.customers,
    customersdb.packages
WHERE
    customersdb.customers.MONTHLY_DISCOUNT < (SELECT 
            AVG(customersdb.customers.MONTHLY_DISCOUNT)
        FROM
            customersdb.customers)
        AND customersdb.customers.FIRST_NAME = (SELECT 
            customersdb.customers.PACK_ID
        FROM
            customersdb.customers
        WHERE
            customersdb.customers.FIRST_NAME = 'kevin');
	 

	 
	
	 