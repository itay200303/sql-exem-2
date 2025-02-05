SELECT year
FROM movies
GROUP BY year
HAVING SUM(revenue) > 1000;