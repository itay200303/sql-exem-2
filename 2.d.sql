SELECT genre, language, AVG(revenue) AS average_revenue
FROM movies
GROUP BY genre, language;