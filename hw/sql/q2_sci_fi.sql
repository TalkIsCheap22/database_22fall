SELECT a.title, t.premiered, t.runtime_minutes || " (mins)" 
FROM akas as a, titles as t
WHERE t.title_id = a.title_id AND t.genres LIKE "%Sci-Fi"
ORDER BY t.runtime_minutes DESC
LIMIT 10;