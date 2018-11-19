-- insertng necessary data for join queries

-- Insert into csufees values(200, 2007, 4000);

INSERT INTO csudb.csufees(campus,year,campusFee) VALUES(200, 2007, 4000);

-- Insert into campuses (campus, location, county, year)
-- values('Indian School Of Management', 'Delhi', 'India',2003);

INSERT INTO csudb.campuses(campus, location, county, year) VALUES('Indian School Of Management', 'Delhi', 'India',2003);

-- write an sql query to make the cartesian product between Campuses and csufees 
-- i.e. each campuses will appear for all csufees and vice versa.


SELECT 
    csudb.campuses.Campus,
    csudb.csufees.Campus,
    csudb.csufees.CampusFee,
    csudb.csufees.Year
FROM
    csudb.csufees
        CROSS JOIN
    csudb.campuses;


-- write an sql query to make report of country, campus name, year, campus fees  
-- for campuses who are having csufees and csufees who does not associated with any of campuses.


SELECT 
    csudb.campuses.County,
    csudb.campuses.Campus,
    csudb.csufees.Year,
    csudb.csufees.CampusFee
FROM
    csudb.campuses
        LEFT JOIN
    csudb.csufees ON csudb.campuses.Id = csudb.csufees.Campus;

-- write an sql query to make report of country, campus name, year, campus fees  for campuses 
-- who are having csufees and csufees who does not associated with any of campuses.

SELECT 
    csudb.campuses.County,
    csudb.campuses.Campus,
    csudb.csufees.Year,
    csudb.csufees.CampusFee
FROM
    csudb.campuses
        LEFT JOIN
    csudb.csufees ON csudb.campuses.Id = csudb.csufees.Campus;

-- write an sql query to make report of country, campus name, year, campus




