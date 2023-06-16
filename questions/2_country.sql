-- We have a marketing budget for this year, which country should we prioritise and why?

SELECT name, users_count, wines_count, users_count / wines_count AS users_per_wines
FROM countries
ORDER BY users_per_wines ASC
LIMIT 5;

