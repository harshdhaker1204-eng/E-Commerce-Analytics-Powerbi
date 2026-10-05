create database ecommerce_analysis;
use ecommerce_analysis;
-- check table
show tables;
-- check the number of rows
select count(*) as total_rows
from cleaned_ecommerce;

select * from cleaned_ecommerce limit 10;

-- View specific colomns
select transaction_id,category,total_spent from cleaned_ecommerce;

-- Basic Analysis
-- 1) Total revenue
select sum(total_spent) as total_revenue from cleaned_ecommerce;
-- 2) Average order value
select avg(total_spent) as average_order_value from cleaned_ecommerce;
-- 3)Total numbers of orders
select count(*) as total_orders from cleaned_ecommerce;
-- 4) Lowest order values
select max(total_spent) as higest_order from cleaned_ecommerce;
-- 5) lowesr order values
select min(total_spent) as lowest_order from cleaned_ecommerce;
-- 6) quantity sum 
select sum(quantity) as quantity_sum from cleaned_ecommerce;
-- quantity avg 
select avg(quantity) as quantity_avg from cleaned_ecommerce;
-- quantity max
select max(quantity) as quantity_max from cleaned_ecommerce;
-- quantity min
select min(quantity) as quantity_min from cleaned_ecommerce; 

-- 7) order above 100
select * from cleaned_ecommerce where
total_spent>100;

select count(*) as g_t_h from cleaned_ecommerce where total_spent>100;

-- 8) Online order
select * from cleaned_ecommerce where
location='Online';

select count(*) as total_online from cleaned_ecommerce where
location='online';

-- 9) order paid using credit card
select * from cleaned_ecommerce where payment_method='Credit Card';

select count(*) from cleaned_ecommerce where payment_method='Credit Card' and discount_applied='TRUE' ;

-- 10) orders where discount was applied
select * from cleaned_ecommerce where discount_applied='TRUE';
select count(*) as total_true  from cleaned_ecommerce where discount_applied='TRUE';


