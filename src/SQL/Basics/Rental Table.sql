
-- WHERE customer_id IN ( SELECT customer_id FROM rental WHERE customer_id > 200);
SELECT * FROM sakila.rental
WHERE customer_id IN ( SELECT customer_id FROM rental WHERE customer_id > 200);

-- BETWEEN 200 AND 1000
SELECT
rental_id, inventory_id,rental_id
FROM 
rental
WHERE 
inventory_id BETWEEN 200 AND 1000
LIMIT 10;