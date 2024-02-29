SELECT name, avg_rating
FROM
(SELECT name, avg_rating, NTILE(10) OVER (ORDER BY avg_rating) AS decile
FROM (
SELECT p.name AS name, AVG(r.rating) AS avg_rating
FROM (SELECT * 
    FROM people AS p
    WHERE p.born = 1955) AS p, crew AS c, ratings AS r
WHERE p.person_id = c.person_id AND c.title_id = r.title_id
GROUP BY name)
)
WHERE decile = 9
ORDER BY avg_rating DESC;
