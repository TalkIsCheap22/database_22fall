SELECT DISTINCT p1.name AS name
FROM people AS p1, people AS p2, crew AS c1, crew AS c2
WHERE p2.name = "Nicole Kidman" AND p2.born = 1967
    AND p1.person_id = c1.person_id AND p2.person_id = c2.person_id
    AND c1.title_id =  c2.title_id
ORDER BY name