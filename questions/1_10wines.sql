-- We want to highlight 10 wines to increase our sales, which ones should we choose and why?

SELECT name, ratings_average, ratings_count
FROM wines
WHERE ratings_count > (SELECT AVG(ratings_count) FROM wines)
ORDER BY ratings_average DESC, ratings_count DESC
LIMIT 10;


