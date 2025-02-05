SELECT genre, avg(revenue) AS average_revenue
FROM movies
GROUP BY genre;