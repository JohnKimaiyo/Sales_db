--  SELECT inventory_id  FROM sakila.inventory;


SELECT inventory_id  FROM sakila.inventory;
--  SELECT inventory_id FROM  inventory WHERE inventory_id > 10
SELECT * FROM sakila.inventory
WHERE inventory_id IN (
SELECT inventory_id FROM  inventory WHERE inventory_id > 10
);