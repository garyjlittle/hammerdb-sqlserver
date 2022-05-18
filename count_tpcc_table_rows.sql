/*
Count the rows in each table
*/

select count (*) as "customer table" from customer ;
GO
#select count (*) as "orders table" from orders;
GO
select count (*) as "order_line table" from order_line;
GO
select count (*) as "item table" from item; 
GO
select count(*) as "new order table" from new_order
GO
select count (*) as "stock table" from stock;
GO
select count (*) as "district table" from district;
GO
select count  (*) as "warehouse table" from warehouse;
GO
select count (*) as "history table" from history;
GO
