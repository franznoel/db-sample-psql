# db-sample-psql
PostgreSQL Database Sample for PSQL

# Sequence of SQL Execution

Dependencies: PostgreSQL
Follow the directions indicated to execute the information successfully.


## Create Database and Tables

Create the Database Sample for PSQL

    CREATE DATABASE samplesql

Create Customers

    CREATE TABLE Customers (
     customer_id serial primary key not null,
     first_name char(50),
     last_name char(50),
     address1 char(100),
     address2 char(100),
     city char(100),
     state char(100),
     country char(200),
     zip char(11),
     discount decimal,
     active boolean
    )

Create Products

    CREATE TABLE Products (
     product_id serial primary key not null,
     product_name char(100),
     description text,
     manufacturer char(100),
     quantity integer,
     sku_number char(50),
     unit_price decimal,
     vendor char(100)
    )

Create Customer_Product_Orders ('Orders' is a reserved word in PostgreSQL)

    CREATE TABLE Customer_Product_Orders (
     order_id serial primary key not null,
     order_date date,
     customer_id int references Customers(customer_id),
     product_id int references Products(product_id),
     billing_name char(100),
     billing_addr1 char(100),
     billing_addr2 char(100),
     billing_city char(100),
     billing_state char(100),
     billing_country char(200),
     billing_zip char(11),
     quantity_sold integer,
     total_price decimal
    )


## Insert Customers, Products, Orders, and Other Data

You can insert the Customers, Products, Orders, and other Data.

### Insert Customers Data

Just in case you want to clear up the data inside the table, you may want to TRUNCATE and reset AUTO INCREMENT: 

    TRUNCATE Customers CASCADE

    ALTER SEQUENCE customers_customer_id_seq RESTART WITH 1

Then, add the customer data

    INSERT INTO Customers (first_name, last_name, address1, city, state, country, zip, discount,active) VALUES 
    ('John', 'Smith', '14689 Sherman Way', 'Van Nuys', 'CA', 'USA', '91405',0.1,true),
    ('Rihanna', 'Fenty', '767 Rocky River Ave', 'Tualatin', 'OR', 'USA', '97062',0.25,true),
    ('Maddie', 'Scarlett', '9854 N. Cambridge St.', 'Covington', 'GA', 'USA', '30014',0.3,true),
    ('Casimir', 'Bell', '8483 St. Louis Ave', 'Concord', 'NH', 'USA', '03301',0.3,true),
    ('Harley', 'Garrett', '74 10th St.', 'Garfield', 'NJ', 'USA', '07026',0.3,true),
    ('Shannon', 'Williams', '9760 Clark Avenue ', 'Summerville', 'SC', 'USA', '29483',0.3,true),
    ('Jerrod', 'Ilbert', '104 Richardson St.', 'Union', 'NJ', 'USA', '07083',0.25,true),
    ('Celia', 'Reynell', '5 George Court ', 'Norman', 'OK', 'USA', '73072',0.3,true),
    ('Katriona', 'Carter', '9316 North Fairway Lane ', 'Dayton', 'NH', 'USA', '45420',0.3,true),
    ('Dionne', 'Johnson', '85 Vernon Lane', 'Concord', 'CT', 'USA', '06066',0.3,true),
    ('Monty', 'Brook', '911 Academy Ave.', 'Ashtabula', 'OH', 'USA', '44004',0.3,true),
    ('Baxter', 'Low', '7774 Manor Station Lane ', 'Conyers', 'GA', 'USA', '30012',0.,true),
    ('Roland', 'Johnson', '7933 E. Jones Ave', 'Lenoir', 'NC', 'USA', '28645',0.1,true),
    ('Ingram', 'Haden', '626 Bellevue Rd.', 'Elgin', 'IL', 'USA', '60120',0.1,true),
    ('Reenie', 'Cook', '913 South Road', 'Chardon', 'OH', 'USA', '44024',0.3,true),
    ('Kit', 'Harrison', '7540 W. County Lane ', 'Tiffin', 'OH', 'USA', '44883',0.1,true),
    ('Linette', 'Johnson', '9652 Ramblewood Ave', 'Ponte Vedra Beach', 'FL', 'USA', '32082',0.3,true),
    ('Rick', 'Nash', '5 Glenwood Drive', 'Corona', 'NY', 'USA', '11368',0.3,true),
    ('Cindy', 'Aylmer', '845 Silver Spear Street', 'Harrison Township', 'MI', 'USA', '48045',0.3,true),
    ('Casimir', 'Bell', '8483 St. Louis Ave', 'Concord', 'NH', 'USA', '07026',0.3,true);

### Insert Products Data

Just in case you want to clear up the data inside the table, you may want to TRUNCATE and reset AUTO INCREMENT:

    TRUNCATE Products CASCADE

    ALTER SEQUENCE products_product_id_seq RESTART WITH 1

Then, add the products data.

    INSERT INTO Products (product_name,description,manufacturer,quantity,sku_number,unit_price,vendor) VALUES
    ('Cherish 14K White Gold Engagement Ring','This ring comes complete with a meticulously selected.','China',20,'0408283',1095,'Robbins Brothers'),
    ('Mens T-Shirt Spell Collar short-sleeved','Item was great, but a bit small.','China',200,'T123412',50,'Ordinary Clothing'),
    ('3.5mm Bluetooth Wireless Stereo','Regular stereo audio devices with Bluetooth-enabled.','Germany',50,'E350512',60,'Samsung'),
    ('Costume Homme Blazer Male Clothing','Make a very correct choice you should choose by the size chart.','Italy',20,'T234502',100,'Calvin Klein'),
    ('New Luxury Geneva Watch Round Quartz','Luxury style, noble style.','USA',20,'0408283',120,'Ferregamo'),
    ('Mens Fashion Slim Fit T-Shirt','Fashion T-Shirt.','Italy',50,'T408283',30,'Aeropostale'),
    ('2016 Mens Summer Fashion Printed T-Shirt','Asian size is about 2-size-smaller than US size.','China',75,'0408283',40,'Robbins Brothers');

### Insert Customer Products Order

Just in case you want to clear up the data inside the table, you may want to TRUNCATE and reset AUTO INCREMENT:

    TRUNCATE Customer_Product_Orders

    ALTER SEQUENCE customer_product_orders_order_id_seq RESTART WITH 1

Then, add the **Customer Product Orders** data.

    INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price) VALUES
    ('2016-08-22',5,7,'Harley Garrett', '74 10th St.', '', 'Garfield', 'NJ', 'USA', '07026',5,60),
    ('2016-08-26',3,7,'Maddie Scarlett', '9854 N. Cambridge St.', '', 'Covington', 'GA', 'USA', '30014',1,50),
    ('2016-08-23',2,3,'Rihanna Fenty', '767 Rocky River Ave', '', 'Tualatin', 'OR', 'USA', '97062',1,60);

### Insert Other Data

Insert all the other data to sync with the queries: 

New data for **Customer Product Orders**

    INSERT INTO Customer_Product_Orders (order_id, order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
    VALUES (2477843,'2016-08-25',7,7,'Jerrod Ilbert', '104 Richardson St.', '', 'Union', 'NJ', 'USA', '07083',5,40);

New data for **Customers**

    INSERT INTO Customers (customer_id,first_name, last_name, address1, city, state, country, zip, discount,active) VALUES 
    (87162412,'John', 'Smith', '14689 Sherman Way', 'Van Nuys', 'CA', 'USA', '91405',0.1,true);

New Data for **Customer Product Orders** (you may insert twice)

    INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
    VALUES ('2016-08-25',87162412,7,'John Smith', '14689 Sherman Way', '', 'Van Nuys', 'CA', 'USA', '91405',5,40);

    INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
    VALUES ('2016-08-25',87162412,1,'John Smith', '14689 Sherman Way', '', 'Van Nuys', 'CA', 'USA', '91405',3,3285);

    INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
    VALUES ('2016-08-10',87162412,1,'John Smith', '14689 Sherman Way', '', 'Van Nuys', 'CA', 'USA', '91405',2,2190);

    INSERT INTO Customer_Product_Orders (order_date, customer_id, product_id, billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip, quantity_sold, total_price)
    VALUES ('2016-08-10',10,1,'Dionne Johnson', '85 Vernon Lane', '', 'Concord', 'CT', 'USA', '06066',5,5475);

## Queries

1) Look for all customers with a name that includes the string 'Johnson'.

    SELECT * FROM Customers
    WHERE first_name = 'Johnson'
    OR last_name = 'Johnson'

2) The 'Product' table's primary key is product_id. A default sequence has been assigned to the column product_id. Add a product called 'Widget' with a unit_price of $5.00 to the Product table.

    INSERT INTO Products (product_name,description,manufacturer,quantity,sku_number,unit_price,vendor)
    VALUES ('Widgets','Some widgets.','Microsoft',1000,'M230501',5,'Microsoft')

3) Show all information related (order, customer and product data) using an explicit join for order_id 2477843.

    SELECT * FROM Customer_Product_Orders
    LEFT JOIN Customers ON Customer_Product_Orders.customer_id = Customers.customer_id
    LEFT JOIN Products ON Customer_Product_Orders.product_id = Products.product_id
    WHERE order_id=2477843

4) Show the first_name, last_name, and the total amount of all orders for customer_id 87162412.

    SELECT Customers.first_name, Customers.last_name, total_price
    FROM (
        SELECT
            customer_id,
            sum(total_price) total_price
        FROM Customer_Product_Orders
        GROUP BY customer_id
    ) customer_orders
    JOIN Customers ON customer_orders.customer_id = customers.customer_id
    WHERE Customers.customer_id = 87162412

5) Show the customer_id, first_name, and last_name of any customers having orders totaling more than $5000 to date.

    SELECT Customers.first_name, Customers.last_name, total_price
    FROM (
        SELECT
            customer_id,
            sum(total_price) total_price
        FROM Customer_Product_Orders
        GROUP BY customer_id
    ) customer_orders
    JOIN Customers ON customer_orders.customer_id = customers.customer_id
    WHERE total_price > 5000

6) Write a query that returns a Boolean flag if the total_price of an order is greater than or equal to $5,000.

    SELECT EXISTS (
        SELECT * FROM Customer_Product_Orders
        WHERE total_price > 5000
    )

7) Write an update statement that updates the columns billing_name, billing_addr1, billing_addr2, billing_city, billing_state, billing_country, billing_zip in the ORDER table based on active customers in the CUSTOMER TABLE.

    UPDATE Customer_Product_Orders
    SET
        billing_name = concat(Customers.first_name, ' ', Customers.last_name),
        billing_addr1 = Customers.address1,
        billing_city = Customers.city,
        billing_state = Customers.state,
        billing_country = Customers.country,
        billing_zip = Customers.zip
    FROM Customers
    WHERE Customer_Product_Orders.customer_id = Customers.customer_id
    AND Customers.active = true;


8) Write a report query to show all active customers and their highest order based on total_price. The following columns should be in the report: customer_id, first_name, last_name, product_id, product_name, order_id, date, quantity_sold, total_price. Please note that you will not show all the orders for 1 customer, you would only show the highest order (based on total_price) that a customer made so far.

    SELECT
        Customers.customer_id,
        first_name,
        last_name,
        Products.product_id,
        product_name,
        order_id,
        order_date,
        quantity_sold,
        total_price
    FROM Customer_Product_Orders
    LEFT JOIN Customers ON Customers.customer_id = Customer_Product_Orders.customer_id
    LEFT JOIN Products ON Products.product_id = Customer_Product_Orders.product_id
    WHERE active = true
    ORDER BY total_price ASC

9) Write a delete statement that deletes all orders in the ORDER table where the customer is inactive in the Customer Table

    DELETE FROM Customer_Product_Orders
    USING Customer_Product_Orders AS cp_orders
    LEFT OUTER JOIN Customers AS c ON cp_orders.customer_id = c.customer_id
    WHERE c.active = false

10) Create a table called “duplicate_order” (with the same columns as ORDER table) and populate it will all records in the ORDER table where you have duplicate order_id.

    CREATE VIEW Duplicate_Orders AS (
        SELECT
            cpo1.order_id,
            cpo1.order_date,
            cpo1.customer_id,
            cpo1.product_id,
            cpo1.billing_name,
            cpo1.billing_addr1,
            cpo1.billing_addr2,
            cpo1.billing_city,
            cpo1.billing_state,
            cpo1.billing_country,
            cpo1.billing_zip,
            cpo1.quantity_sold,
            cpo1.total_price
        FROM Customer_Product_Orders cpo1, Customer_Product_Orders cpo2
        WHERE cpo1.order_date = cpo2.order_date
        AND cpo1.product_id = cpo2.product_id
        AND cpo1.billing_name = cpo2.billing_name
        AND cpo1.billing_addr1 = cpo2.billing_addr1
        AND cpo1.billing_addr2 = cpo2.billing_addr2
        AND cpo1.billing_city = cpo2.billing_city
        AND cpo1.billing_state = cpo2.billing_state
        AND cpo1.billing_country = cpo2.billing_country
        AND cpo1.billing_zip = cpo2.billing_zip
        AND cpo1.quantity_sold = cpo2.quantity_sold
        AND cpo1.order_id > cpo2.order_id
    )

Execute this after creating Duplicate orders.

    SELECT * FROM Duplicate_Orders
