SELECT language
FROM movies
GROUP BY language
HAVING COUNT(*) >= 3;