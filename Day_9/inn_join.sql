

-- insertng necessary data for join queries

-- Insert into rooms values('FNB', 'luxuary', 2,'King', 2, 1300, 'modern');

INSERT INTO inndb.rooms(RoomId, roomName, beds, bedType, maxOccupancy, basePrice, decor) VALUES('FNB', 'luxuary', 2,'King', 2, 1300, 'modern');

-- Insert into reservations (Code, checkin, checkout,rate, lastname, firstname, adults, kids)
-- values(14453, '01-Sept-18', '03-Sept-18',15000,'vaid','sarang',1,1);

INSERT INTO inndb.reservations(Code, checkin, checkout,rate, lastname, firstname, adults, kids) VALUES(14453, '01-Sept-18', '03-Sept-18',15000,'vaid','sarang',1,1);

-- write an sql query to make the cartesian product between room and reservations 
-- - i.e. each room will appear for all reservations and vice versa.

SELECT 
    inndb.rooms.RoomId,
    inndb.reservations.Code,
    inndb.reservations.Room,
    inndb.reservations.CheckIn,
    inndb.reservations.CheckOut,
    inndb.reservations.Rate,
    inndb.reservations.LastName,
    inndb.reservations.FirstName,
    inndb.reservations.Adults,
    inndb.reservations.Kids
FROM
    inndb.reservations
        CROSS JOIN
    inndb.rooms;

-- write an sql query to make report of Room id, check in, check out, lastname, firstname 
-- for room who are having reservations and room who does not associated with any of reservations.


SELECT 
    inndb.rooms.RoomId,
    inndb.reservations.CheckIn,
    inndb.reservations.CheckOut,
    inndb.reservations.LastName,
    inndb.reservations.FirstName
FROM
    inndb.reservations
        LEFT JOIN
    inndb.rooms ON inndb.reservations.Room = inndb.rooms.RoomId;

-- write an sql query to make report of Room id, check in, check out, lastname, firstname  
-- for room who are having reservations and room who does not associated with any of reservations.

SELECT 
    inndb.rooms.RoomId,
    inndb.reservations.CheckIn,
    inndb.reservations.CheckOut,
    inndb.reservations.LastName,
    inndb.reservations.FirstName
FROM
    inndb.reservations
        LEFT JOIN
    inndb.rooms ON inndb.reservations.Room = inndb.rooms.RoomId;

-- write an sql query to make report of Room id, check in, check out, lastname, firstname 
-- for room who are having reservations or not associated with any reservations and room 
-- who does not associated with any of reservations also.

SELECT 
    inndb.rooms.RoomId,
    inndb.reservations.CheckIn,
    inndb.reservations.CheckOut,
    inndb.reservations.LastName,
    inndb.reservations.FirstName
FROM
    inndb.reservations
        LEFT JOIN
    inndb.rooms ON inndb.reservations.Room = inndb.rooms.RoomId
    
UNION

SELECT 
    inndb.rooms.RoomId,
    inndb.reservations.CheckIn,
    inndb.reservations.CheckOut,
    inndb.reservations.LastName,
    inndb.reservations.FirstName
FROM
    inndb.reservations
        RIGHT JOIN
    inndb.rooms ON inndb.reservations.Room = inndb.rooms.RoomId;



