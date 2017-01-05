# Create Database and Tables
CREATE DATABASE dbSamplepSQL

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
