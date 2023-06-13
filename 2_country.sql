-- We have a marketing budget for this year, which country should we prioritise and why?

SELECT name, users_count, wineries_count, users_count / wineries_count AS users_per_wineries
FROM countries
ORDER BY users_per_wineries ASC
LIMIT 1;

SELECT name, users_count
FROM countries
ORDER BY users_count ASC
LIMIT 1;
