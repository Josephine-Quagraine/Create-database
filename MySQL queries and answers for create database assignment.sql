#1. Input use sql_store; select * from customers;
use sql_stores;

select * 
from customers

where customer_id = 1
order by first_name;

select * from customers
where customer_id = 1
order by first_name desc;

#1. select last name, first name, points and points+10 from customers
select last_name,first_name,points,points+10 from customers;
-- #using the query2, change +10 points to reads times by 10 and plus 100

select last_name,first_name,points,(points+10)*100 from customers;

-- change the query 2 code to create a discount factor so the table now shows a discount header and change the (point +10) * 100)
select last_name,first_name,points,(points+10)*100 as discount_factor from customers;

#2.  all the products in database in the result set. show columns; name, unit price, and new column called new price based on (unit price * 1.1)
select * from products;

select name, unit_price, (unit_price * 1.1) as new_price from products;

#3.	Create a new query to find all customers with a birth date of > '1990-01-01'
select * from customers
where birth_date>'1990-01-01' ;


#4.	using sql-inventory, write query to find name of product with most amount in stock

use sql_inventory;
select * from products;

select  name from products
where quantity_in_stock = (select max(quantity_in_stock)from products);

#5.	select sql_inventory. Write query to find most expensive product
select name
FROM products
WHERE unit_price = (SELECT MAX(unit_price) FROM products);

#6.	write query to find out first name, last name, address and the birthdate of oldest customer
use sql_store;
select * from customers;

select first_name, last_name, address, birth_date
from customers
where birth_date = (select min(birth_date) from customers);


