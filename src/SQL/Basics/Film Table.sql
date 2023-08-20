-- select first name
SELECT title  FROM sakila.film;

-- SELECT film_id FROM film WHERE film_id > 10
SELECT * FROM film
WHERE film_id in(
SELECT film_id FROM film WHERE film_id > 10
);