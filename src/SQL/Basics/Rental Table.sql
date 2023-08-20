
-- WHERE customer_id IN ( SELECT customer_id FROM rental WHERE customer_id > 200);
SELECT * FROM sakila.rental
WHERE customer_id IN ( SELECT customer_id FROM rental WHERE customer_id > 200);