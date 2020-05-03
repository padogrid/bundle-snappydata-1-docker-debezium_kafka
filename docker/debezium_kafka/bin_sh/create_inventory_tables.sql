-- This script creates all of the inventory tables in SnappyData.
-- Make sure to create the 'inventory' schema first before running this script.

-- Create customers
drop table if exists inventory.customers;
create table inventory.customers (
  id integer not null,
  first_name string not null,
  last_name string not null,
  email string not null
)
using column options(key_columns 'id', partition_by 'id')
;

-- Create addresses
drop table if exists inventory.addresses;
CREATE TABLE inventory.addresses
(
   id int NOT NULL,
   customer_id int NOT NULL,
   street varchar(255) NOT NULL,
   city varchar(255) NOT NULL,
   state varchar(255) NOT NULL,
   zip varchar(255) NOT NULL,
   type char(8) NOT NULL
)
using column options(key_columns 'id', partition_by 'id') 
;

-- Create geom
drop table if exists inventory.geom;
CREATE TABLE inventory.geom
(
   id int NOT NULL,
   g blob NOT NULL,
   h blob
)
using column options(key_columns 'id', partition_by 'id') 
;

-- Create orders
drop table if exists inventory.orders;
CREATE TABLE inventory.orders
(
   order_number int NOT NULL,
   order_date date NOT NULL,
   purchaser int NOT NULL,
   quantity int NOT NULL,
   product_id int NOT NULL
)
using column options(key_columns 'order_number', partition_by 'order_number') 
;

-- Create products
drop table if exists inventory.products;
CREATE TABLE inventory.products
(
   id int NOT NULL,
   name varchar(255) NOT NULL,
   description string,
   weight real
)
using column options(key_columns 'id', partition_by 'id') 
;

-- Create products_on_hand
drop table if exists inventory.products_on_hand;
CREATE TABLE inventory.products_on_hand
(
   product_id int NOT NULL,
   quantity int NOT NULL
)
using column options(key_columns 'product_id', partition_by 'product_id') 
;
