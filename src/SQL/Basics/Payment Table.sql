-- rental_id
SELECT rental_id  FROM sakila.payment;

-- WHERE rental_id IN (SELECT rental_id FROM payment WHERE rental_id > 1000
SELECT * FROM sakila.payment
WHERE rental_id IN (SELECT rental_id FROM payment WHERE rental_id > 1000
)
;