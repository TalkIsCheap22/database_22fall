SELECT GROUP_CONCAT(title, ', ')
FROM(SELECT DISTINCT a1.title AS title
    FROM akas AS a1, akas AS a2
    WHERE a1.title_id = a2.title_id AND a2.title = "House of the Dragon"
    ORDER BY title
)