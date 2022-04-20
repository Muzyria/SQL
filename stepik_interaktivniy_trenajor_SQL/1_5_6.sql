UPDATE book 
    SET price = 0.9 * price 
    WHERE amount >= 5 AND amount <= 10;

SELECT * FROM book;