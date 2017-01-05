# Customer Product Orders

TRUNCATE Customer_Product_Orders

ALTER SEQUENCE customer_product_orders_order_id_seq RESTART WITH 1

INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price) VALUES
('2016-08-22',5,7,'Harley Garrett', '74 10th St.', '', 'Garfield', 'NJ', 'USA', '07026',5,60),
('2016-08-26',3,7,'Maddie Scarlett', '9854 N. Cambridge St.', '', 'Covington', 'GA', 'USA', '30014',1,50),
('2016-08-23',2,3,'Rihanna Fenty', '767 Rocky River Ave', '', 'Tualatin', 'OR', 'USA', '97062',1,60);
