#queries list

# 1) Look for all customers with a name that includes the string 'Johnson'.
SELECT * FROM Customers
WHERE first_name = 'Johnson'
OR last_name = 'Johnson'

# 2) The 'Product' table's primary key is product_id. A default sequence has been assigned to the column product_id.
# Add a product called 'Widget' with a unit_price of $5.00 to the Product table.
INSERT INTO Products (product_name,description,manufacturer,quantity,sku_number,unit_price,vendor)
VALUES ('Widgets','Some widgets.','Microsoft',1000,'M230501',5,'Microsoft')

# 3) Show all information related (order, customer and product data) using an explicit join for order_id 2477843.
SELECT * FROM Customer_Product_Orders
LEFT JOIN Customers ON Customer_Product_Orders.customer_id = Customers.customer_id
LEFT JOIN Products ON Customer_Product_Orders.product_id = Products.product_id
WHERE order_id=2477843

# 4) Show the first_name, last_name, and the total amount of all orders for customer_id 87162412.
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

# 5) Show the customer_id, first_name, and last_name of any customers having orders totaling more than $5000 to date.
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


# 6) Write a query that returns a Boolean flag if the total_price of an order is greater than or equal to $5,000.
SELECT EXISTS (
    SELECT * FROM Customer_Product_Orders
    WHERE total_price > 5000
)

# 7) Write an update statement that updates the columns billing_name, billing_addr1, billing_addr2,
# billing_city, billing_state, billing_country, billing_zip in the ORDER table based on active customers in
# the CUSTOMER TABLE.
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


# 8) Write a report query to show all active customers and their highest order based on total_price. 
# The following columns should be in the report: customer_id, first_name, last_name, product_id, 
# product_name, order_id, date, quantity_sold, total_price. Please note that you will not show all 
# the orders for 1 customer, you would only show the highest order (based on total_price) 
# that a customer made so far.
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

# 9) Write a delete statement that deletes all orders in the ORDER table where the customer is inactive 
# in the Customer Table
DELETE FROM Customer_Product_Orders
USING Customer_Product_Orders AS cp_orders
LEFT OUTER JOIN Customers AS c ON cp_orders.customer_id = c.customer_id
WHERE c.active = false

# 10) Create a table called “duplicate_order” (with the same columns as ORDER table) 
# and populate it will all records in the ORDER table where you have duplicate order_id.
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

SELECT * FROM Duplicate_Orders