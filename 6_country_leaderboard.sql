-- We would to give create a country leaderboard, give us a visual that shows the **average wine rating for each `country`**. Do the same for the `vintages`.

-- wines
SELECT 
    countries.name as countries_name,
    ROUND(AVG(wines.ratings_average),2) as average_ratings_wines,
    users_count,
    wines_count,
    wineries_count
FROM regions
INNER JOIN countries 
ON regions.country_code = countries.code
INNER JOIN wines
ON regions.id = wines.region_id
GROUP BY countries_name
ORDER BY average_ratings_wines DESC;

--vintages
SELECT 
    countries.name as countries_name,
    ROUND(AVG(vintages.ratings_average),2) as average_ratings_vintages,
    users_count,
    wines_count,
    wineries_count
FROM regions
INNER JOIN countries 
ON regions.country_code = countries.code
INNER JOIN wines
ON regions.id = wines.region_id
INNER JOIN vintages
ON wines.id = vintages.wine_id
GROUP BY countries_name
ORDER BY average_ratings_vintages DESC;