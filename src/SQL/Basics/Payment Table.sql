-- rental_id
SELECT rental_id  FROM sakila.payment;

-- WHERE rental_id IN (SELECT rental_id FROM payment WHERE rental_id > 1000
SELECT * FROM sakila.payment
WHERE rental_id IN (SELECT rental_id FROM payment WHERE rental_id > 1000
)
;


-- SUM(amount) a FROM payment GROUP BY customer_id) AS totals;
SELECT  AVG (a) FROM (SELECT customer_id,
SUM(amount) a FROM payment GROUP BY customer_id) AS totals;

-- SELECT AVG(amount) FROM payment
SELECT AVG(amount) FROM payment

-- SELECT MIN(amount) FROM payment
SELECT MIN(amount) FROM payment

--SELECT MAX(amount) FROM payment
SELECT MAX(amount) FROM payment