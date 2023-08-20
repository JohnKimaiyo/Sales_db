-- select first name
SELECT first_name FROM sakila.actor;

-- select where fild_id = 2
SELECT * FROM actor
WHERE actor_id IN
(SELECT actor_id FROM film_actor
WHERE film_id = 2);

-- GROUP BY last_name;
SELECT  last_name, COUNT(*)
FROM sakila.actor
GROUP BY last_name;

-- WHERE first_name LIKE 'An%'  ORDER BY 
SELECT * FROM sakila.actor
WHERE first_name LIKE 'An%'
ORDER BY first_name,last_name DESC;
