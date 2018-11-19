
-- *****************          dataset   hotel          **************** 

-- 1. find the roomname with 7 characters long from last 

SELECT 
    inndb.rooms.roomName,
    RIGHT(inndb.rooms.roomName, 3) AS trimmed_roomName
FROM
    inndb.rooms;

-- 2. find the roomname with 7 characters long from starting

SELECT 
    inndb.rooms.roomName,
    LEFT(inndb.rooms.roomName, 3) AS trimmed_roomName
FROM
    inndb.rooms;

-- 3. remove the ND from roomid of all the rooms

SELECT 
    inndb.rooms.RoomId,
    TRIM(TRAILING 'ND' FROM inndb.rooms.RoomId) AS trimmed_roomName
FROM
    inndb.rooms;
-- 4. find the location of 'N' in rooms id

SELECT 
    inndb.rooms.RoomId,
    POSITION('N' IN inndb.rooms.roomId) AS position_of_N
FROM
    inndb.rooms;
    
-- 5. get the substring from index 3 to 7 characters from roomname column

SELECT 
    inndb.rooms.roomName, SUBSTR(inndb.rooms.roomName, 4, 2)
FROM
    inndb.rooms;

--  if you wanted to take the sums of several columns, then average all of those values, you’d need to do each aggregation in a distinct step.

-- 6. show sum of the baseprice of all the rooms according to bedType and take average of that

SELECT 
    AVG(sum_of_basePrice) AS avg_of_baseprice
FROM
    (SELECT 
        SUM(inndb.rooms.basePrice) AS sum_of_basePrice
    FROM
        inndb.rooms
    GROUP BY inndb.rooms.bedType) baseprice_table;

-- 7. show all the room id those having roomname name and reservation entires


-- 8. display the rooms who shares  same bedtype