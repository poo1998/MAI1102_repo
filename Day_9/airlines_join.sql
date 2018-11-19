


-- insertng necessary data for join queries

-- Insert into airlines values(13, 'kingfisher','KingFs', 'india');
INSERT INTO airlinesdb.airlines(id,airline,abbreviation,country)VALUES(13, 'kingfisher','KingFs', 'india');

-- Insert into flights (flightno, sourceairport, destairport)values(2001, 'Jaipur', 'delhi');

INSERT INTO airlinesdb.flights(flightno, sourceairport, destairport)values(2001, 'Jaipur', 'delhi');

-- write an sql query to make the cartesian product between airline and flights 
-- i.e. each airline will appear for all flights and vice versa.

SELECT 
    airlinesdb.airlines.Airline,
    airlinesdb.flights.FlightNo,
    airlinesdb.flights.SourceAirport,
    airlinesdb.flights.DestAirport
FROM
    airlinesdb.airlines
        CROSS JOIN
    airlinesdb.flights;


-- write an sql query to make report of country, flight no., source airport, destairport  
-- for airlines who are having flights and flights who does not associated with any of airlines.

SELECT 
    airlinesdb.airlines.Country,
    airlinesdb.flights.FlightNo,
    airlinesdb.flights.DestAirport,
    airlinesdb.flights.SourceAirport
FROM
    airlinesdb.airlines
        LEFT JOIN
    airlinesdb.flights ON airlinesdb.airlines.Id = airlinesdb.flights.Airline;

-- write an sql query to make report of country, flight no., source airport, destairport  
-- for flights who are having airlines and airlines who does not associated with any of flights.
SELECT 
    airlinesdb.airlines.Country,
    airlinesdb.flights.FlightNo,
    airlinesdb.flights.DestAirport,
    airlinesdb.flights.SourceAirport
FROM
    airlinesdb.airlines
        LEFT JOIN
    airlinesdb.flights ON airlinesdb.airlines.Id = airlinesdb.flights.Airline;

-- write an sql query to make report of country, flight no., source airport, destairport  
-- for flights who are having airlines or not associated with any airlines and flights 
-- who does not associated with any of airlines also.

SELECT 
    airlinesdb.airlines.Country,
    airlinesdb.flights.FlightNo,
    airlinesdb.flights.DestAirport,
    airlinesdb.flights.SourceAirport
FROM
    airlinesdb.airlines
        RIGHT JOIN
    airlinesdb.flights ON airlinesdb.airlines.Id = airlinesdb.flights.Airline

UNION

SELECT 
    airlinesdb.airlines.Country,
    airlinesdb.flights.FlightNo,
    airlinesdb.flights.DestAirport,
    airlinesdb.flights.SourceAirport
FROM
    airlinesdb.airlines
        LEFT JOIN
    airlinesdb.flights ON airlinesdb.airlines.Id = airlinesdb.flights.Airline;