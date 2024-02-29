SELECT t.decade || 's' AS decade, AVG(r.rating) AS avg_rating, 
    MAX(r.rating) AS top_rating, MIN(r.rating) AS min_rating, t.n AS num_releases
FROM (SELECT premiered / 10 * 10 as decade, COUNT(*) AS n, title_id
    FROM titles
    WHERE premiered IS NOT NULL
    GROUP BY premiered) as t, ratings as r
WHERE t.title_id = r.title_id
GROUP BY t.decade
ORDER BY avg_rating DESC, decade ASC;