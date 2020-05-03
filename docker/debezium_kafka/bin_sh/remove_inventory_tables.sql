-- Tear down
drop table if exists inventory.customers;
drop table if exists inventory.addresses;
drop table if exists inventory.geom;
drop table if exists inventory.orders;
drop table if exists inventory.products;
drop table if exists inventory.products_on_hand;
-- Must empty otherwise will fail. Delete all tables first.
drop schema inventory restrict;

