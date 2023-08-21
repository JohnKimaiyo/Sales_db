-- SELECT category_id film_category WHERE category_id > 10
SELECT * FROM sakila.film_category
WHERE category_id IN(
SELECT category_id film_category WHERE category_id > 10
);


--film_category
SELECT
film_id, category_id,last_update

FROM
film_category
WHERE 
category_id IN(6,11)
LIMIT 10;