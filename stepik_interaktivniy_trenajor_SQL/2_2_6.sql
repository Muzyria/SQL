SELECT name_author, SUM(amount) AS Количество
FROM 
    author LEFT JOIN book
    on author.author_id = book.author_id
GROUP BY name_author
HAVING Количество < 10 OR Количество IS NULL
ORDER BY Количество ASC;