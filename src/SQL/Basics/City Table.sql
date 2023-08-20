-- select name
SELECT  city FROM sakila.city;

-- WHERE country_id in(SELECT country_id FROM city WHERE country_id >30)
SELECT * FROM city
WHERE country_id in(SELECT country_id FROM city WHERE country_id >30)


;