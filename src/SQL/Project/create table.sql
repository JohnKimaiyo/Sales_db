USE sales;

CREATE TABLE sales.cust_california(
customer_id smallint(5) NOT NULL
,address_id smallint(5) NOT NULL
,district varchar(20) NOT NULL
,city_id smallint(5) NOT NULL
,city varchar(50) NOT NULL
,PRIMARY KEY (customer_id,address_id,city_id)
,KEY idx_fx_customer_id(customer_id)

-- create table to hold customer payment totals
CREATE TABLE sales.cus_pay_total AS
SELECT address_id
,max(address_id) as store_address
,max(district) as store_district
,YEAR(payment_date) as payment_year
,MONTH(payment_date) as payment_month


FROM sales.cus_pay_detail

GROUP BY address_id
,YEAR(payment_date) 
,MONTH(payment_date) 
;
-- Return final outout
SELECT *
FROM sales.cus_pay_total
;
