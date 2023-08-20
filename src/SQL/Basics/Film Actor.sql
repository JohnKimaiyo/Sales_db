-- selct fil id

SELECT  film_id  FROM sakila.film_actor;

-- selct fil id
SELECT * FROM sakila.film_actor
WHERE film_id IN (SELECT film_id FROM film_actor WHERE film_id >300)
;