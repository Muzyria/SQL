SELECT title, author, amount,
    (SELECT MAX(amount) FROM book) - amount AS Заказ
FROM book
WHERE amount < ANY (
    SELECT MAX(amount) 
    FROM book 
      );