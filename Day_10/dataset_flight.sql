

-- *****************          dataset   flightdb          **************** 

-- 1. find the abbreviations of flights  3 characters long  last

SELECT 
    airlinesdb.airlines.Abbreviation,
    RIGHT(airlinesdb.airlines.Abbreviation,
        3) AS trimmed_abbreviation
FROM
    airlinesdb.airlines;


-- 2. find the abbreviations of flights with 3 characters  from starting

SELECT 
    airlinesdb.airlines.Abbreviation,
    LEFT(airlinesdb.airlines.Abbreviation,
        3) AS trimmed_abbreviation
FROM
    airlinesdb.airlines;


-- 3. remove the 'ir' from all the abbreviations of flights

SELECT 
    airlinesdb.airlines.Abbreviation,
    TRIM(TRAILING 'ir' FROM airlinesdb.airlines.Abbreviation) AS trimmed_abbreviation
FROM
    airlinesdb.airlines;

-- 4. find the location on 'i' in abbreviations of flights

SELECT 
    airlinesdb.airlines.Abbreviation,
    POSITION('i' IN airlinesdb.airlines.Abbreviation) AS position_of_i
FROM
    airlinesdb.airlines;


-- 5. get the substring from index 4 to 2 characters from abbreviations of flights

SELECT 
    airlinesdb.airlines.Abbreviation,
    SUBSTR(airlinesdb.airlines.Abbreviation,4,2) 
FROM
    airlinesdb.airlines;


--  if you wanted to take the sums of several columns, then average all of those values, you’d need to do each aggregation in a distinct step.

-- 6. find the count of all flights for airlines and make average of that

SELECT 
    AVG(count_of_flight) AS avg_of_flight
FROM
    (SELECT 
        COUNT(airlinesdb.flights.airline) AS count_of_flight
    FROM
        airlinesdb.flights
    GROUP BY airlinesdb.flights.Airline) flight_table;

-- 7. show all the airline id those having airline name and flights associated 




-- 8. display the flights who shares  same airlines



