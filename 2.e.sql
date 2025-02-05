SELECT language, COUNT(*) AS movie_count
FROM movies
GROUP BY language
ORDER BY movie_count ASC
LIMIT 1;