-- CREATE DATABASE airlinesDB;

CREATE DATABASE airlinesDB;

USE airlinesDB;
-- 1. 
-- Find all airlines that have at least one flight out of AXX airport. Report

-- the full name and the abbreviation of each airline.

-- Report each name only once. Sort the airlines in alphabetical order.

SELECT 
    airlines.Airline, airlines.Abbreviation
FROM
    airlines,
    flights
WHERE
    airlines.Id = flights.Airline
        AND flights.SourceAirport = 'AXX'
ORDER BY airlines.Airline;

-- 2. 
-- Find all destinations served from the AXX airport by Northwest. Report

-- flight number and the full name of the airlne. Sort
-- in ascending order by flight number

SELECT 
    flights.flightNo, airlines.airline
FROM
    airlines,
    flights
WHERE
    airlines.Id = flights.Airline
        AND flights.SourceAirport LIKE '%AXX%'
        AND airlines.airline LIKE '%Northwest%'
ORDER BY flights.flightNo;
 
-- 3. 
-- Find all other destinations that are accessible from AHT


-- flights with exactly one change-over. Report pairs of flight numbers
-- airport codes for the final destinations, and full names of the airlines
-- sorted in alphabetical order by the airport code.


SELECT 
    flights.FlightNo, flights.DestAirport
FROM
    bflights,
    airlines
WHERE
    flights.airline = airlines.id
        AND flights.DestAirport LIKE 'AHT';


 -- 4. 
-- Report all pairs of flightNo served by both Frontier and JetBlue.
-- Each pair must be reported exactly once.

SELECT 
    flights.flightNo, airlines.Abbreviation
FROM
    flights,
    airlines
WHERE
    flights.airline = airlines.id
        AND airlines.Abbreviation LIKE '%Frontier%'
        OR airlines.Abbreviation LIKE '%jetblue%';

-- 5. 
-- Find ALL five of the airlines listed below: Delta,
-- Frontier, USAir, UAL and Southwest. From To

SELECT 
    airlines.Abbreviation
FROM
    airlines,
    flights
WHERE
    flights.Airline = airlines.id
        AND airlines.Abbreviation IN ('Delta' , 'Frontier', 'USAir', 'UAL', 'Southwest');















