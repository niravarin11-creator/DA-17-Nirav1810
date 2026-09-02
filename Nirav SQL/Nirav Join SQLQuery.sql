create database customerDB;

use customerDB;

create table customers(
ID int primary key,
Name varchar(20),
Age int,
Address varchar(50)
);

insert into customers(ID, Name, Age , Address)
values
(1, 'Rohan', 21, 'Palanpur'),
(2, 'Riya', 22, 'Rajkot'),
(3, 'Het', 23, 'Amreli'),
(4, 'Hiren', 24, 'Surendranagar');

select * from customers;

create table orders(
OID int primary key,
Customer_ID int unique,
Item varchar(20),
Amount int
);

insert into orders(OID, Customer_ID, Item, Amount)
values
(01, 1, 'Pizza', 250),
(02, 2, 'Dosa', 180),
(03, 5, 'Wrap', 150),
(04, 7, 'Burger', 270);

select * from orders;

select * from customers inner join orders on customers.ID = orders.Customer_ID;

select * from customers left join orders on customers.ID = orders.Customer_ID;

select * from customers right join orders on customers.ID = orders.Customer_ID;

select * from customers full join orders on customers.ID = orders.Customer_ID;