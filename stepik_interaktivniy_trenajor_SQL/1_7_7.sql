UPDATE 
    fine AS f, payment AS p
SET 
    f.date_payment = p.date_payment,
    f.sum_fine = IF(DATEDIFF(f.date_payment, f.date_violation) <= 20, f.sum_fine / 2, f.sum_fine)
WHERE   
    f.name = p.name 
    AND
    f.number_plate = p.number_plate
    AND
    f.date_violation = p.date_violation
    AND
    f.date_payment IS Null;

SELECT * FROM fine