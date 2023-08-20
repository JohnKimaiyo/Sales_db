--  select city id
SELECT   city_id FROM sakila.address;

-- SELECT city_id FROM address WHERE city_id >200
SELECT * FROM address
WHERE city_id in
(SELECT city_id FROM address WHERE city_id >200  ) ;


--GROUP BY district;
SELECT  district ,COUNT(*)
FROM sakila.address 
GROUP BY district;