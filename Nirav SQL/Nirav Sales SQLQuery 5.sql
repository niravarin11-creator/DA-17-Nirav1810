create database Sales2DB;

use Sales2DB;

create table sales_transactions (
transaction_id int primary key,
customer_name	VARCHAR(50),
product_name	VARCHAR(50),
category	VARCHAR(50),
quantity	INT,
unit_price	INT,
discount_percent	INT,
city	VARCHAR(50),
payment_mode	VARCHAR(30),
salesperson	VARCHAR(50),
customer_type	VARCHAR(30) );

insert into sales_transactions(transaction_id, customer_name, product_name, category, quantity, unit_price, discount_percent, city, payment_mode, salesperson, customer_type)
VALUES
(1001, 'Aarav Mehta', 'Laptop Pro 15', 'Electronics', 2, 75000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Shah', 'Office Chair', 'Furniture', 5, 12000, 8, 'Mumbai', 'Card', 'Neha', 'Regular'),
(1003, 'Rohan Patel', 'Smartphone X', 'Electronics', 3, 45000, 12, 'Ahmedabad', 'UPI', 'Amit', 'Premium'),
(1004, 'Sneha Verma', 'Refrigerator', 'Appliances', 1, 68000, 15, 'Delhi', 'Card', 'Priya', 'VIP'),
(1005, 'Karan Joshi', 'Dining Table', 'Furniture', 4, 18000, 5, 'Pune', 'Cash', 'Rahul', 'Regular'),
(1006, 'Ananya Rao', 'Laptop Air 14', 'Electronics', 1, 62000, 7, 'Bangalore', 'Online', 'Neha', 'Premium'),
(1007, 'Vikram Singh', 'Washing Machine', 'Appliances', 2, 42000, 18, 'Jaipur', 'UPI', 'Amit', 'Regular'),
(1008, 'Meera Kapoor', 'Smartphone Pro', 'Electronics', 4, 55000, 20, 'Mumbai', 'Card', 'Priya', 'VIP'),
(1009, 'Aditya Shah', 'Sofa Set', 'Furniture', 3, 35000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1010, 'Ishita Patel', 'Air Conditioner', 'Appliances', 2, 58000, 12, 'Surat', 'UPI', 'Neha', 'Premium'),
(1011, 'Raj Malhotra', 'Gaming Laptop', 'Electronics', 2, 95000, 15, 'Delhi', 'Card', 'Amit', 'VIP'),
(1012, 'Kavya Desai', 'Bookshelf', 'Furniture', 6, 9000, 5, 'Pune', 'Cash', 'Priya', 'Regular'),
(1013, 'Arjun Mehta', 'Smart TV 55', 'Electronics', 2, 72000, 18, 'Bangalore', 'Online', 'Rahul', 'Premium'),
(1014, 'Nisha Sharma', 'Microwave Oven', 'Appliances', 3, 22000, 8, 'Ahmedabad', 'UPI', 'Neha', 'Regular'),
(1015, 'Yash Patel', 'Refrigerator Pro', 'Appliances', 1, 82000, 20, 'Mumbai', 'Card', 'Amit', 'VIP'),
(1016, 'Simran Kaur', 'Office Desk', 'Furniture', 5, 16000, 12, 'Delhi', 'Online', 'Priya', 'Regular'),
(1017, 'Dev Kumar', 'Smartphone Ultra', 'Electronics', 3, 68000, 10, 'Jaipur', 'UPI', 'Rahul', 'Premium'),
(1018, 'Riya Shah', 'Washing Machine Pro', 'Appliances', 4, 48000, 22, 'Surat', 'Card', 'Neha', 'Premium'),
(1019, 'Manav Joshi', 'Premium Sofa', 'Furniture', 2, 65000, 15, 'Ahmedabad', 'Online', 'Amit', 'VIP'),
(1020, 'Pooja Mehta', 'Tablet Pro', 'Electronics', 5, 32000, 8, 'Pune', 'UPI', 'Priya', 'Regular'),
(1021, 'Harsh Verma', 'Laptop Ultra', 'Electronics', 3, 88000, 25, 'Mumbai', 'Card', 'Rahul', 'VIP'),
(1022, 'Neel Shah', 'Air Conditioner Pro', 'Appliances', 2, 76000, 10, 'Delhi', 'Online', 'Neha', 'Premium'),
(1023, 'Tanvi Rao', 'Dining Set', 'Furniture', 4, 28000, 18, 'Bangalore', 'Cash', 'Amit', 'Regular'),
(1024, 'Siddharth Patel', 'Smart TV Pro', 'Electronics', 6, 60000, 12, 'Surat', 'UPI', 'Priya', 'Premium'),
(1025, 'Aisha Khan', 'Double Door Refrigerator', 'Appliances', 2, 92000, 20, 'Ahmedabad', 'Card', 'Rahul', 'VIP'),
(1026, 'Mohit Singh', 'Executive Chair', 'Furniture', 7, 14000, 10, 'Jaipur', 'Online', 'Neha', 'Regular'),
(1027, 'Diya Mehta', 'Gaming Monitor', 'Electronics', 3, 52000, 15, 'Delhi', 'UPI', 'Amit', 'Premium'),
(1028, 'Varun Shah', 'Washing Machine', 'Appliances', 5, 38000, 28, 'Mumbai', 'Cash', 'Priya', 'Regular'),
(1029, 'Isha Patel', 'Luxury Sofa', 'Furniture', 3, 78000, 12, 'Pune', 'Card', 'Rahul', 'VIP'),
(1030, 'Dhruv Sharma', 'Business Laptop', 'Electronics', 2, 110000, 18, 'Bangalore', 'Online', 'Neha', 'VIP');
SELECT * FROM sales_transactions;

--1)
select * from sales_transactions 
order by unit_price desc, quantity desc;

--2)
select * from sales_transactions
where unit_price > 50000 and quantity > 1;

--3)
select * from sales_transactions
where customer_type = 'Premium' and unit_price > 25000 order by unit_price desc;

--4)
select * from sales_transactions
where discount_percent > 15 and quantity >= 3 order by discount_percent desc;

--5)
select customer_name, product_name, category, quantity, unit_price, city  from sales_transactions
where city in ( 'Ahmedabad','Mumbai','Delhi' ) and unit_price > 20000 order by unit_price desc;

--6)
select customer_name, product_name, quantity, unit_price, payment_mode from sales_transactions
where payment_mode = 'Online' or payment_mode = 'Card' and quantity > 2 and unit_price > 15000 
order by quantity desc;

--7)
select * from sales_transactions
where category in ( 'Electronics','Furniture','Appliances' ) 
and discount_percent < 10 order by discount_percent asc;

--8)
select customer_name, customer_type, product_name, quantity, unit_price from sales_transactions
where customer_type in ( 'Premium','Regular') and unit_price > 30000 and quantity > 1
order by unit_price desc;

--9)
select * from sales_transactions
where not salesperson = 'Rahul' and quantity > 4 and discount_percent < 20 order by quantity desc;

--10)
select transaction_id, customer_name, product_name, quantity, unit_price, category 
from sales_transactions where quantity > 5 and unit_price > 10000 or quantity between 2 and 5 
and unit_price > 50000 order by unit_price desc;

--11)
select * from sales_transactions
where not city = 'Ahmedabad' and quantity > 2 and unit_price > 20000 and not payment_mode = 'Cash';

--12)
select customer_name, product_name, quantity, unit_price, discount_percent, 
customer_type from sales_transactions
where category = 'Electronics' and unit_price > 40000 and quantity > 1
and discount_percent < 15 order by unit_price desc;

--13)
select customer_name, product_name, quantity, unit_price, discount_percent, 
city from sales_transactions
where category = 'Furniture' and quantity > 3 or unit_price > 25000
order by quantity desc;

--14)
select * from sales_transactions
where customer_type = 'Premium' and not payment_mode ='Cash' and quantity > 1 
and unit_price > 20000 order by unit_price desc;

--15)
select customer_name, product_name, category, unit_price, discount_percent, payment_mode 
from sales_transactions where unit_price > 50000 and discount_percent > 10
and not payment_mode ='Cash' order by discount_percent desc;

--16)
select * from sales_transactions
where category = 'Electronics' and quantity > 2 and discount_percent < 15 
or category = 'Furniture' and quantity > 3 and unit_price > 20000
or category= 'Appliance' and unit_price > 40000 
order by unit_price desc;

--17)
select customer_name, customer_type, product_name, quantity, unit_price, city, payment_mode
from sales_transactions
where customer_type = 'Premium' or customer_type = 'VIP' and not city = 'Ahmedabad' 
and quantity > 3 and unit_price > 60000
order by unit_price desc;

--18)
select * from sales_transactions
where discount_percent > 20 and quantity > 2 and unit_price < 50000
and not payment_mode = 'Cash' and not city = 'Mumbai'
order by discount_percent desc;

--19)
select transaction_id, customer_name, product_name, category, quantity, unit_price, discount_percent, customer_type,
payment_mode, city , salesperson from sales_transactions 
where not payment_mode = 'Cash' and customer_type = 'Premium' and category = 'Electronics'
and unit_price > 40000 
or customer_type = 'VIP' and unit_price > 50000
or customer_type = 'Regular' and quantity > 5 and unit_price > 10000 
order by unit_price desc;

--20)
select transaction_id, customer_name, product_name, category, quantity, unit_price,
discount_percent, city, payment_mode, salesperson, customer_type 
from sales_transactions 
where customer_type = 'Premium' and category = 'Electronics' and unit_price > 35000
or customer_type = 'VIP'  and category = 'Furniture' and quantity > 2 
or customer_type = 'Regular' and unit_price > 75000
and discount_percent > 25 and not payment_mode = 'Cash' and not city = 'Ahmedabad'
order by unit_price desc,
quantity desc,
discount_percent desc;
