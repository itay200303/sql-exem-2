SELECT year, SUM(revenue) AS total_revenue
FROM movies
GROUP BY year;
