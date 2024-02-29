SELECT p.name AS name, 2024-p.born AS age 
FROM people AS p
WHERE born >= 1900 AND p.died IS NULL
ORDER BY age DESC, name ASC
LIMIT 20