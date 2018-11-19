
-- *****************          dataset   campuses          **************** 

-- 1. find the location of campuses 3 characters  last 

SELECT 
    csudb.campuses.Location, RIGHT(csudb.campuses.Location, 3)
FROM
    csudb.campuses;

-- 2. find the location of campuses with 3 characters from starting

SELECT 
    csudb.campuses.Location, LEFT(csudb.campuses.Location, 3)
FROM
    csudb.campuses;

-- 3. remove the ld from the location of all campuses
 SELECT 
    csudb.campuses.Location,
    TRIM(TRAILING 'ld' FROM csudb.campuses.Location) AS trimmed_location
FROM
    csudb.campuses;
    
    
-- 4. find the location on 'i' in location of all campuses

SELECT 
    csudb.campuses.Location,
    POSITION('i' IN csudb.campuses.Location) AS position_of_i
FROM
    csudb.campuses;

-- 5. get the substring from index 4 to 2 characters from lastname column

SELECT 
    csudb.campuses.Location,
    SUBSTR(csudb.campuses.Location, 4, 2)
FROM
    csudb.campuses;

--  if you wanted to take the sums of several columns,
 -- then average all of those values, you’d need to do each aggregation in a distinct step.

-- 6. find the sum of all campuses fee and also print the average fee from all the years

SELECT 
    AVG(sum_of_fee) AS avg_of_fee
FROM
    (SELECT 
        SUM(csudb.csufees.CampusFee) AS sum_of_fee
    FROM
        csudb.csufees
    GROUP BY csudb.csufees.Year) fee_table;

-- 7. show all the campus ids those has campus names and fees records 

-- 8. show campuses those are at same location
