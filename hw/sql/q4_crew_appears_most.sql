SELECT p.name AS name, c.n AS num_appearances
FROM people AS p, (
    SELECT COUNT(*) AS n, person_id
    FROM crew
    GROUP BY person_id) as c
WHERE p.person_id = c.person_id
ORDER BY num_appearances DESC
LIMIT 20;