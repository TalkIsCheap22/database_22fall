SELECT COUNT(*)
FROM titles AS t1, titles AS t2, akas AS a
WHERE t1.premiered = t2.premiered AND t2.title_id = a.title_id AND a.title = "Army of Thieves";