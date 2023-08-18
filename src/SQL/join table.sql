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


