-- select name
SELECT  city FROM sakila.city;

-- WHERE country_id in(SELECT country_id FROM city WHERE country_id >30)
SELECT * FROM city
WHERE country_id in(SELECT country_id FROM city WHERE country_id >30)
;

--INNER JOIN  city
ON city.country_id = country.country_id;

SELECT country.country,country.country_id,country.last_update FROM country INNER JOIN  city
ON city.country_id = country.country_id;