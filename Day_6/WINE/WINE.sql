CREATE DATABASE wineDB;

USE wineDB;

-- 1. 
-- Find the grape(s) that grow(s) in the largest number of appellations.
-- Report grape name, color and the number of appellations it grows in.


SELECT 
    winedb.wine.Grape,
    winedb.grapes.color,
    COUNT(winedb.wine.Appelation) AS no_of_appellation
FROM
    winedb.wine,
    winedb.grapes
    
WHERE
	winedb.grapes.ID=winedb.wine.No
GROUP BY winedb.wine.grape ASC LIMIT 1;
         
-- 2. 
-- Find the most popular white grape (i.e., the grape that is used to make
-- the largest number of white wines in the database). Report the name
-- of the grape.

SELECT 
    COUNT(winedb.wine.Grape) AS total_no_of_grape,
    winedb.wine.Grape,
    winedb.grapes.color
FROM
    winedb.wine,
    winedb.grapes
WHERE
		winedb.grapes.grape = winedb.wine.grape
        and winedb.grapes.color LIKE '%White%'
        GROUP BY winedb.wine.Grape
        ORDER BY COUNT(winedb.wine.Grape) DESC LIMIT 1;  

-- 3. 
-- Report the grape with the largest number of high-ranked wines (score
-- of 93 and above).

SELECT 
    winedb.wine.grape,
    MAX(winedb.wine.score) AS max_score
    
FROM
    winedb.wine
WHERE
    winedb.wine.score >=93
GROUP BY winedb.wine.grape;

-- 4. 
-- Report the appellation responsible for the largest number of highranked
-- wines (score of 93 and above). Report just the name of the
-- appellation .

SELECT 
    winedb.wine.grape,
    MAX(winedb.wine.score) AS max_score,
    winedb.wine.Appelation
    
FROM
    winedb.wine,
    winedb.appellations
WHERE
    winedb.wine.Appelation=winedb.appellations.Appelation
    AND winedb.wine.score >=93
GROUP BY winedb.wine.grape;



-- 5. 
-- Find the high-ranked wine (score of 93 or above) responsible for highest
-- Price. Report the vintage year, winery, wine name, score and
-- the Price (Chronological Order).

SELECT 
    winedb.wine.grape,
    MAX(winedb.wine.score) AS max_score,
    winedb.wine.Price,
    winedb.wine.Year,
    winedb.wine.Winery,
    winedb.wine.Name
    
FROM
    winedb.wine,
    winedb.appellations
WHERE
    winedb.wine.Appelation=winedb.appellations.Appelation
    AND winedb.wine.score >=93
GROUP BY winedb.wine.grape
ORDER BY  MAX(winedb.wine.score),winedb.wine.Price ;

-- 6. 
-- Find if there are any 2008 Chardonnays that scored better than any
-- 2007 Syrah. report winery, wine name, appellation, score and price.

SELECT 
    winedb.wine.Winery,
    winedb.wine.Name,
    winedb.wine.Appelation,
    winedb.wine.Score,
    winedb.wine.Price,
    winedb.wine.Grape,
    winedb.wine.Year
FROM
    winedb.wine
WHERE
	winedb.wine.Name LIKE '%Syrah%'
    AND winedb.wine.Year =2007;

SELECT 
    winedb.wine.Winery,
    winedb.wine.Name,
    winedb.wine.Appelation,
    winedb.wine.Score,
    winedb.wine.Price,
    winedb.wine.Grape,
    winedb.wine.Year
FROM
    winedb.wine
WHERE
	winedb.wine.Name LIKE '%Chardonnay%';