-- select first name
 
SELECT  first_name FROM sakila.customer;


-- SELECT address_id FROM customer WHERE address_id >30
SELECT * FROM customer
WHERE address_id IN
(SELECT address_id FROM customer WHERE address_id >30);

--  WHERE first_name LIKE 'Ma%'
SELECT * FROM sakila.customer
WHERE first_name LIKE 'Ma%'
ORDER BY first_name,last_name DESC;