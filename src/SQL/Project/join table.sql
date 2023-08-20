USE sales;



INSERT INTO sales.cust_california(
customer_id,
address_id,
district,
city_id,
city)

SELECT cus.customer_id,
adr.address_id,
adr.district,
adr.city_id,
cty.city

FROM sakila.customer cus

JOIN sakila.address adr
ON cus.address_id = adr.address_id

JOIN sakila.city cty
ON adr.city_id = cty.city_id

WHERE adr.district = 'California';


CREATE TABLE sales.cus_pay_details AS
SELECT cus.customer_id
,pay.payment_id
,pay.rental_id
,pay.payment_date
,ren.rental_id
,inv.inventory_id
,flm.title
,str.store_id


FROM sales.cust_california cus
JOIN sakila.payment pay
ON cus.customer_id = pay.customer_id

LEFT JOIN sakila.rental ren
ON pay.rental_id = ren.rental_id

JOIN sakila.inventory inv
ON ren.inventory_id = inv.inventory_id

JOIN sakila.film flm
ON inv.film_id = flm.film_id