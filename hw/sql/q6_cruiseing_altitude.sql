SELECT a.title AS title
FROM (SELECT title_id, MIN(title) AS title
    FROM akas
    GROUP BY title_id) AS a, ratings AS r, people AS p, crew AS c
WHERE p.name LIKE '%Cruise' AND p.born = 1962 AND p.person_id = c.person_id 
AND c.title_id = a.title_id AND c.title_id = r.title_id
ORDER BY r.votes DESC
LIMIT 10;