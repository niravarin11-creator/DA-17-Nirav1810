create database SalesAnalyticsDB;

create table customers (
id int primary key,
customer_name varchar(50) not null,
age int,
country varchar(50),
amount_spend int
);

insert into customers(id, customer_name, age, country, amount_spend)
values
(1, 'Rahul', 22, 'India', 30000),
(2, 'Priya', 19, 'India', 5000),
(3, 'John', 28, 'USA', 75000),
(4, 'Maria', 35, 'Canada', 45000),
(5, 'Ahmed', 42, 'UAE', 90000),
(6, 'Sofia', 24, 'UK', 12000),
(7, 'Chen', 31, 'China', 60000),
(8, 'Emma', 55, 'Australia', 15000),
(9, 'David', 67, 'Germany', 100000),
(10, 'Aisha', 26, 'Pakistan', 8000),
(11, 'Lucas', 39, 'Brazil', 55000),
(12, 'Olivia', 21, 'France', 18000),
(13, 'Michael', 48, 'USA', 85000),
(14, 'Fatima', 60, 'UAE', 25000),
(15, 'Daniel', 33, 'Japan', 70000)


select * from customers

select customer_name, age, country
from customers;

select customer_name, country, amount_spend
from customers;

select * from customers 
where amount_spend > 50000;

select * from customers
where country = 'India';

select * from customers
where amount_spend < 20000;

select * from customers
where age > 30 and amount_spend > 30000;

select * from customers
where country = 'India' and amount_spend > 40000;

select * from customers
where country = 'India' or country = 'USA' ;

select * from customers
where (country = 'India' or country = 'USA') 
and amount_spend > 50000;

select * from customers
where not country = 'India';

select * from customers
order by amount_spend asc;

select * from customers 
order by amount_spend desc;

select * from customers
order by age asc;

select * from customers
where age between 25 and 40 and
amount_spend > 30000 and
country = 'India' or country = 'USA';

select * from customers 
where age >=  30 and
amount_spend > 40000 and
not country = 'India' 
order by amount_spend desc;