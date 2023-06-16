-- We would like to do a selection of wines that are easy to find all over the world. **Find the top 3 most common `grape` all over the world**

SELECT 
    grapes.name as grapes_name,
    most_used_grapes_per_country.wines_count
FROM most_used_grapes_per_country
INNER JOIN countries 
ON most_used_grapes_per_country.country_code = countries.code
INNER JOIN grapes
ON most_used_grapes_per_country.grape_id = grapes.id
GROUP BY grapes_name
ORDER BY most_used_grapes_per_country.wines_count DESC;

-- The top 3 most common grape: CABARNET SAUVIGNON, CHARDONNAY, PINOT NOIR
