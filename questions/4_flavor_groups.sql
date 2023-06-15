-- We has detected that a big cluster of customers like a specific combination of tastes. We have identified few `primary` `keywords` that matches this and we would like you to **find all the wines that have those keywords**. To ensure accuracy of our selection, ensure that **more than 10 users confirmed those keywords**. Also, identify the `flavor_groups` related to those keywords.
	-- Coffee
	-- Toast
	-- Green apple
	-- cream
	-- citrus

SELECT 
    wine_id, 
    wines.name as wines_name, 
    count
FROM keywords_wine
INNER JOIN keywords 
ON keywords_wine.keyword_id = keywords.id
INNER JOIN wines
ON keywords_wine.wine_id = wines.id
WHERE 
    keyword_type = 'primary' 
    AND count > 10
    AND keywords.name IN ('coffee', 'toast', 'green apple', 'cream', 'citrus')
GROUP BY wine_id
HAVING COUNT(wines_name) = 5
ORDER BY wine_id;

-- Wines with all 5 of these keyword names


