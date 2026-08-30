create database Sales3DB;

use Sales3DB;

create table sales_transactions3 (
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

insert into sales_transactions3 (transaction_id, customer_name, product_name, category, quantity, unit_price, discount_percent, city, payment_mode, salesperson, customer_type)
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
SELECT * FROM sales_transactions3;

--1)
select 
COUNT(*) as total_transactions,
SUM(quantity) as total_quantity_sold,
SUM(quantity * unit_price) as total_sales_value,
AVG(unit_price) as average_unit_price,
MAX(unit_price) as highest_unit_price,
MIN(unit_price) as lowest_unit_price
from sales_transactions3;

--2)
select
 category,
 COUNT(*) as total_transactions,
 SUM(quantity) as total_quantity_sold,
 SUM(quantity * unit_price) as total_sales_value,
 AVG(unit_price) as average_unit_price
 from sales_transactions3
 group by category
 order by total_sales_value desc;

 --3)
 select
 salesperson,
 COUNT(*) as total_transactions,
 SUM(quantity) as total_quantity_sold,
 SUM(quantity * unit_price) as total_sales_value,
 AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by salesperson
  order by total_sales_value desc;

  --4)
  select
  city,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by city
  order by total_sales_value desc;

  --5)
  select
  customer_type,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_purchased,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by customer_type
  order by total_sales_value desc;

  --6)
  select 
  payment_mode,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by payment_mode
  order by total_sales_value desc;

  --7)
  select
  category,
  SUM(quantity) as total_unit_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by category
  having SUM(quantity * unit_price)  > 30000;

  --8)
  select
  salesperson,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_units_sold,
  SUM(quantity * unit_price) as total_sales_value
  from sales_transactions3	
  group by salesperson
  having SUM(quantity * unit_price) > 500000
  order by total_sales_value desc;

  --9)
  select
  product_name,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by product_name
  having SUM(quantity) > 5
  order by total_quantity_sold desc;

  --10)
  select
  category,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_units_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  where customer_type = 'Premium'
  group by category
  having SUM(quantity * unit_price) > 200000;
  
  --11)
  select
  salesperson,
  COUNT(*) as total_tarnsactions,
  SUM(quantity) as total_units_sold,
  SUM(quantity * unit_price) as total_sales_value
  from sales_transactions3
  where customer_type = 'VIP'
  group by salesperson
  having SUM(quantity * unit_price) > 300000;

  --12)
  select
  city,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_units_sold,
  SUM(quantity * unit_price) as total_sales_value
  from sales_transactions3
  where payment_mode = 'Online' or payment_mode = 'Card'
  group by city
  having SUM(quantity * unit_price) > 300000;

  --13)
  select 
  discount_percent,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  group by discount_percent
  having COUNT(*) >= 2;

  --14)
  select
  salesperson,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_units_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price,
  MAX(unit_price) as Highest_unit_price
  from sales_transactions3
  where category = 'Electronics'
  group by salesperson
  having SUM(quantity * unit_price) > 250000;

  --15)
  select
  city,
  COUNT(*) as total_transasctions,
  SUM(quantity) as total_units_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  where category = 'Furniture' and quantity > 2
  group by city
  having  SUM(quantity * unit_price) > 50000;

  --16)
  select
  salesperson,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  where category = 'Appliances'
  and not payment_mode = 'Cash'
  and discount_percent < 20
  group by salesperson
  having SUM(quantity * unit_price) > 100000;

  --17)
  select
  customer_type,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price,
  MAX(unit_price) as maximum_unit_price
  from sales_transactions3
  where customer_type = 'Premium' or customer_type = 'VIP'
  group by customer_type
  order by total_sales_value desc;

  --18)
  select
  salesperson,
  COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price
  from sales_transactions3
  where discount_percent > 15
  group by salesperson
  having COUNT(*) >= 2;

  select * from sales_transactions3

  --19)
  insert into sales_transactions3 (transaction_id, customer_name, product_name, category, quantity, 
  unit_price, discount_percent, city, payment_mode, salesperson, customer_type)
VALUES
(1031, 'Raj Mehta', 'MacBook Pro', 'Electronics', 2, 125000, 10 ,'Mumbai', 'Online', 'Rahul', 'Premium' )

select * from sales_transactions3
where transaction_id = 1031;


--20)
select
salesperson,
category,
COUNT(*) as total_transactions,
  SUM(quantity) as total_quantity_sold,
  SUM(quantity * unit_price) as total_sales_value,
  AVG(unit_price) as average_unit_price,
  MIN(unit_price) as minimum_unit_price,
  MAX(unit_price) as maximum_unit_price,
  AVG(discount_percent) as average_discount_percentage
from sales_transactions3
where not payment_mode = 'Cash'
and quantity > 1 and discount_percent < 20
group by salesperson, category
having SUM(quantity * unit_price) > 200000
order by total_sales_value;
