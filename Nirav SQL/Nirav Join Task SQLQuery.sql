Create DATABASE JoinPracticeDB;

USE JoinPracticeDB;

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Customer
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');


CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);


INSERT INTO Orders
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);


SELECT * FROM Customer;

SELECT * FROM Orders;

--1)
select
c.customer_id,
c.customer_name,
c.city,
o.order_id,
o.product_name,
o.amount
from Customer as c
inner join Orders as o
on c.customer_id = o.customer_id;

--2)
select
c.customer_id,
c.city,
o.product_name,
o.amount
from Customer as c
inner join Orders as o
on c.customer_id = o.customer_id;

--3)
select
c.customer_id,
c.customer_name,
o.order_id,
o.product_name,
o.amount
from Customer as c
left join Orders as o
on c.customer_id = o.customer_id;

--4)
select
c.customer_id,
c.customer_name,
c.city
from Customer as c
left join Orders as o
on c.customer_id = o.customer_id;

--5)
select
o.order_id,
c.customer_id,
c.customer_name,
o.product_name,
o.amount
from Customer as c
right join Orders as o
on c.customer_id = o.customer_id;

--6)
select
o.order_id,
c.customer_id,
o.product_name,
o.amount
from Customer as c
right join Orders as o
on c.customer_id = o.customer_id;

--7)
select
c.customer_id,
c.customer_name,
o.order_id,
o.product_name,
o.amount
from Customer as c
full outer join Orders as o
on c.customer_id = o.customer_id;

--8)
select
c.customer_name,
o.order_id,
o.product_name,
o.amount
from Customer as c
inner join Orders as o
on c.customer_id = o.customer_id
where amount > 10000;

--9)
select
c.customer_name,
c.city,
o.order_id,
o.product_name,
o.amount
from Customer as c
inner join Orders as o
on c.customer_id = o.customer_id;

--10)
select
c.customer_name,
o.product_name,
o.quantity,
o.amount
from Customer as c,
Orders as o
where c.customer_id = o.customer_id;

--11)
select
c.customer_id,
c.customer_name,
sum(o.amount) as total_amount
from customer as c
left join orders as o
on c.customer_id = o.customer_id
group by 
c.customer_id,
c.customer_name;

--12)
select
c.customer_id,
c.customer_name,
count(o.order_id) as TotalOrders
from Customer as c
left join Orders as o on c.customer_id = o.customer_id
group by c.customer_id , c.customer_name;

--13)
select
c.customer_name,
AVG(o.amount) as Average_order_amount
from Customer as c
inner join Orders as o 
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;

--14)
select 
c.customer_name,
o.order_id,
o.product_name,
o.amount
from Customer as c
inner join Orders as o 
on c.customer_id = o.customer_id
order by o.amount desc;

--15)
select
c.customer_name,
o.order_id,
o.product_name,
o.amount
from Customer as c
inner join Orders as o 
on c.customer_id = o.customer_id
order by o.amount asc;

--16)
select
c.customer_id,
c.customer_name,
count(o.order_ID) as Number_OF_Orders,
sum(o.quantity) as Total_Quantity,
SUM(o.amount) as Total_Amount
from Customer as c
left join Orders as o 
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name;

--17)
select
c.customer_id,
c.customer_name,
SUM(o.amount) as Total_spending
from Customer as c
left join Orders as o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having SUM(o.amount) > 20000;

--18)
select
c.customer_id,
c.customer_name,
COUNT(o.order_id) as NumberOfOrders
from Customer as c
join Orders as o
on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name
having COUNT(o.order_id) > 1;

--19)
select
c.customer_id,
c.customer_name,
o.order_id,
o.customer_id
from Customer as c
full outer join Orders as o
on c.customer_id = o.customer_id;

--Customer who have orders--

select
c.customer_id,
c.customer_name,
o.order_id
from Customer as c
full outer join Orders as o
on c.customer_id = o.customer_id
where c.customer_id is not null
and o.order_id is not null;

--Customers who do not have orders--

select
c.customer_id,
c.customer_name
from Customer as c
full outer join Orders as o
on c.customer_id = o.customer_id
where c.customer_id is not null
and o.order_id is null;

--Orders whose customers do not exist--
select 
o.order_id,
o.customer_id
from customer as c
full outer join  orders as o
on c.customer_id = o.customer_id
where c.customer_id is null
and o.order_id is not null;

--20)
select 
c.customer_id,
c.customer_name,
c.city,
o.order_id,
o.product_name,
o.quantity,
o.amount,
(o.quantity * o.amount) as Total_Value
from Customer as c
inner join Orders as o
on c.customer_id = o.customer_id;