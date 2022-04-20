SELECT title, author, amount, 
    ROUND((price / 100) * 70, 2) AS new_price 
FROM book;