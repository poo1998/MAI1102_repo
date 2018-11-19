-- insertng necessary data for join queries

-- Insert into grapes values(21, 'aston Malbec', 'purple');

INSERT INTO winedb.grapes values(21, 'aston Malbec', 'purple');


-- Insert into wine (no, winery, appelation, state, name, year, price, score, cases, drink)
-- values(501, 'enotria', 'India','Delhi','Giana',2009,100,97, 6000, 2006);

INSERT INTO winedb.wine(no, winery, appelation, state, name, year, price, score, cases, drink)VALUES(501, 'enotria', 'India','Delhi','Giana',2009,100,97, 6000, 2006);

-- write an sql query to make the cartesian product between grapes and wines 
-- i.e. each grapes will appear for all wines and vice versa.

SELECT 
    winedb.grapes.Grape,
    winedb.wine.No,
    winedb.wine.Grape,
    winedb.wine.Winery,
    winedb.wine.Appelation,
    winedb.wine.State,
    winedb.wine.Name,
    winedb.wine.Year,
    winedb.wine.Price,
    winedb.wine.Score,
    winedb.wine.Cases,
    winedb.wine.Drink
FROM
    winedb.wine
        CROSS JOIN
    winedb.grapes;

-- write an sql query to make report of grape,winary,appelletion,year,price,color 
-- for grapes who are having wines and wines who does not associated with any of grapes.


SELECT 
    winedb.wine.Grape,
    winedb.wine.Winery,
    winedb.wine.Appelation,
    winedb.wine.Year,
    winedb.wine.Price,
    winedb.grapes.Color
FROM
    winedb.wine
        LEFT JOIN
    winedb.grapes ON winedb.wine.No = winedb.grapes.ID;

-- write an sql query to make report of grape,winary,appelletion,year,price,color  
-- for wine who are having grape and grapes who does not associated with any of wine.

SELECT 
    winedb.wine.Grape,
    winedb.wine.Winery,
    winedb.wine.Appelation,
    winedb.wine.Year,
    winedb.wine.Price,
    winedb.grapes.Color
FROM
    winedb.wine
        LEFT JOIN
    winedb.grapes ON winedb.wine.No = winedb.grapes.ID;

-- write an sql query to make report of grape,winary,appelletion,year,price,color  
-- for wine who are having grapes or not associated with any wine and wine 
-- who does not associated with any of grapes also.

SELECT 
    winedb.wine.Grape,
    winedb.wine.Winery,
    winedb.wine.Appelation,
    winedb.wine.Year,
    winedb.wine.Price,
    winedb.grapes.Color
FROM
    winedb.wine
        LEFT JOIN
    winedb.grapes ON winedb.wine.No = winedb.grapes.ID
    
UNION

SELECT 
    winedb.wine.Grape,
    winedb.wine.Winery,
    winedb.wine.Appelation,
    winedb.wine.Year,
    winedb.wine.Price,
    winedb.grapes.Color
FROM
    winedb.wine
        RIGHT JOIN
    winedb.grapes ON winedb.wine.No = winedb.grapes.ID;
