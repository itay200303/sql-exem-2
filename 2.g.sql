SELECT genre
FROM movies
GROUP BY genre
HAVING COUNT(*) > 2;