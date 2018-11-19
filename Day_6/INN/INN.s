CREATE DATABASE innDB;

USE innDB;

-- 1. 
-- Find all modern rooms with a base price below $160 and two beds.
-- Report room names and codes in alphabetical order by the code.


SELECT 
    reservations.room, reservations.code
FROM
    reservations,
    rooms
WHERE
    reservations.room = rooms.RoomId
        AND rooms.decor LIKE '%modern%'
        AND rooms.basePrice < 160
        AND rooms.beds=2;


-- 2. 
-- Find all July reservations for the ’Convoke and sanguine’ room. For each reservation
-- report the last name of the person who reserved it, checkin and
-- checkout dates, the total number of people staying and the daily rate.
-- Output reservations in chronological order.

SELECT 
	reservations.LastName,reservations.CheckIn,reservations.CheckOut, 
COUNT(reservations.LastName) AS Total_no_of_people ,
SUM(rooms.basePrice) FROM reservations,rooms
WHERE reservations.room = rooms.RoomId
AND rooms.RoomName Like '%Convoke and sanguine%' 
AND reservations.CheckIn LIKE '%JUL%'
GROUP BY reservations.LastName
ORDER BY reservations.LastName;

-- 3. 
-- Find all rooms occupied on February 6, 2010. Report full name of the
-- room, the check-in and checkout dates of the reservation. Sort output
-- in alphabetical order by room name.

SELECT 
    reservations.CheckIn, reservations.CheckOut, rooms.roomName
FROM
    reservations,
    rooms
WHERE
    reservations.room = rooms.RoomId
        AND reservations.CheckIn LIKE '06-FEB%'
        ORDER BY rooms.roomName ASC; 

-- 4. 
-- For each stay of GRANT KNERIEN in the hotel, calculate the total amount
-- of money, he paid. Report reservation code, checkin and checkout
-- dates, room name (full) and the total amount of money the stay cost.
-- Sort output in chronological order by the day of arrival.

SELECT 
    reservations.CheckIn,
    reservations.CheckOut,
    rooms.roomName,
    reservations.Code,
    SUM(rooms.basePrice) AS Total_ammount
FROM
    reservations,
    rooms
WHERE
    reservations.room = rooms.RoomId
        AND reservations.FirstName LIKE '%GRANT%'
        GROUP BY  reservations.CheckIn
        ORDER BY  reservations.CheckIn ASC;

-- 5. 
-- For each reservation that starts on December 31, 2010 report the room
-- name, nightly rate and the total amount of
-- money paid. Sort output in descending order by the number of nights
-- stayed.

SELECT 
	rooms.roomName ,rooms.basePrice,
    SUM(rooms.basePrice) AS Total_ammount,
	reservations.CheckIn 
FROM
  reservations,rooms 
    
WHERE  
	reservations.room = rooms.RoomId
    AND  reservations.CheckIn LIKE '31-DEC%'
    GROUP BY rooms.roomName
    ORDER BY reservations.CheckIn DESC;

