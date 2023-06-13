-- SELECT name, ratings_average, ratings_count 
-- FROM wines 
-- WHERE name = 'Pétrus Pomerol 1990';

-- SELECT name, ratings_average, ratings_count, price_euros 
-- FROM vintages 
-- ORDER BY ratings_average DESC, ratings_count DESC
-- LIMIT 40;

-- SELECT name, price_euros
-- FROM vintages
-- ORDER BY price_euros DESC
-- LIMIT 10;

-- SELECT DISTINCT wines.name, vintages.name
-- FROM wines
-- JOIN vintages ON wines.id = vintages.wine_id;

-- SELECT name, ratings_average, ratings_count 
-- FROM wines 
-- WHERE ratings_count>AVG(ratings_count)
-- ORDER BY ratings_average DESC, ratings_count DESC;

SELECT name, ratings_average, ratings_count
FROM wines
WHERE ratings_count > (SELECT AVG(ratings_count) FROM wines)
ORDER BY ratings_average DESC, ratings_count DESC
LIMIT 10;


