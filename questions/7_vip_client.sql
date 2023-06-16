-- One of our VIP client like `Cabernet Sauvignon`, he would like a top 5 recommandation, which wines would you recommend to him?

SELECT 
    id,
    name, 
    ROUND(AVG(ratings_average),2), 
    ROUND(AVG(ratings_count),2), 
    ROUND(AVG(user_structure_count),2),
    ROUND(AVG(acidity),2),
    ROUND(AVG(intensity),2),
    ROUND(AVG(sweetness),2),
    ROUND(AVG(tannin),2)
FROM wines
WHERE name LIKE '%Cabernet Sauvignon%' ;


SELECT 
    name, 
    ratings_average,
    ratings_count,
    user_structure_count,
    acidity,
    intensity,
    sweetness,
    tannin
FROM wines
WHERE name NOT LIKE '%Cabernet Sauvignon%' AND user_structure_count>100
GROUP BY name
HAVING
    ABS(ROUND(AVG(acidity),2) - 3.31) <= 0.25 AND
    ABS(ROUND(AVG(intensity),2) - 4.59) <= 0.25 AND
    ABS(ROUND(AVG(sweetness),2) - 1.7) <= 0.25 AND
    ABS(ROUND(AVG(tannin),2) - 3.39) <= 0.25
ORDER BY ratings_average DESC, ratings_count DESC
LIMIT 5;

-- First, I averaged Cabarnet's properties such as acidity, intensity, sweetness, tannin. Then I found other wines with 0.25 range. However, since some of them have low user_structure_counts, I decided to make it at least greater than 100. Then I ranked them according to ratings_average.


 
