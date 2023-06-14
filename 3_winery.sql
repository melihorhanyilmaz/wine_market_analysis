-- We would like to give a price to the best winery, which one should we choose and why?

SELECT wineries.id as wineries_id, wineries.name as wineries_name, wines.ratings_average, SUM(ratings_count), SUM(user_structure_count)
FROM wines
INNER JOIN wineries 
ON wines.winery_id = wineries.id
WHERE (ratings_count > (SELECT AVG(ratings_count) FROM wines))
GROUP BY wineries.name
ORDER BY ratings_average DESC, SUM(ratings_count) DESC
LIMIT 20;

-- First, I grouped the wineries. As in the first question, I sorted first by their ratings_average and then by the sum of their ratings_counts. Finally, I added the sum of user_structure_counts to the table.


-- I chose VEGA SICILIA winery as it has more ratings_average and almost 130000 ratings_count.
-- But ANTINORI with 4.6 rating and 270000 count can also be selected.
