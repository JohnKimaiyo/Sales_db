-- SELECT category_id film_category WHERE category_id > 10
SELECT * FROM sakila.film_category
WHERE category_id IN(
SELECT category_id film_category WHERE category_id > 10
);