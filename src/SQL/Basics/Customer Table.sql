-- select first name
 
SELECT  first_name FROM sakila.customer;


-- SELECT address_id FROM customer WHERE address_id >30
SELECT * FROM customer
WHERE address_id IN
(SELECT address_id FROM customer WHERE address_id >30)




;