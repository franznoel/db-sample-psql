
# 1) Insert Data for Query to work
INSERT INTO Customer_Product_Orders (order_id, order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
VALUES (2477843,'2016-08-25',7,7,'Jerrod Ilbert', '104 Richardson St.', '', 'Union', 'NJ', 'USA', '07083',5,40);

# 3) Insert Data for Query to work
INSERT INTO Customers (customer_id,first_name, last_name, address1, city, state, country, zip, discount,active) VALUES 
(87162412,'John', 'Smith', '14689 Sherman Way', 'Van Nuys', 'CA', 'USA', '91405',0.1,true);

INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
VALUES ('2016-08-25',87162412,7,'John Smith', '14689 Sherman Way', '', 'Van Nuys', 'CA', 'USA', '91405',5,40);

INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
VALUES ('2016-08-25',87162412,1,'John Smith', '14689 Sherman Way', '', 'Van Nuys', 'CA', 'USA', '91405',3,3285);

INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
VALUES ('2016-08-10',87162412,1,'John Smith', '14689 Sherman Way', '', 'Van Nuys', 'CA', 'USA', '91405',2,2190);

INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
VALUES ('2016-08-10',10,1,'Dionne Johnson', '85 Vernon Lane', '', 'Concord', 'CT', 'USA', '06066',5,5475);

