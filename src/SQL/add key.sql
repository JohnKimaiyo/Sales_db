SELECT * FROM sales.cust_california;


ALTER TABLE cust_california ADD UNIQUE INDEX(customer_id,address_id,city_id);
ALTER TABLE cust_california ADD KEY (customer_id);
ALTER TABLE cust_california ADD KEY (address_id);
ALTER TABLE cust_california ADD KEY(city_id);