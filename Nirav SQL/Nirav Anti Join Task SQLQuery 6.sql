create database CompanySalesDB;

use CompanySalesDB;

CREATE TABLE Customers2 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Customers2 (customer_id, customer_name, city)
VALUES
(101, 'Aarav Shah', 'Ahmedabad'),
(102, 'Riya Patel', 'Mumbai'),
(103, 'Rahul Mehta', 'Delhi'),
(104, 'Priya Sharma', 'Ahmedabad'),
(105, 'Karan Desai', 'Pune'),
(106, 'Neha Joshi', 'Mumbai'),
(107, 'Arjun Patel', 'Bangalore'),
(108, 'Sneha Shah', 'Delhi'),
(109, 'Vivek Mehta', 'Ahmedabad'),
(110, 'Anjali Desai', 'Surat'),
(111, 'Rohan Shah', 'Pune'),
(112, 'Meera Patel', 'Mumbai'),
(113, 'Dhruv Shah', 'Ahmedabad'),
(114, 'Kavya Mehta', 'Delhi'),
(115, 'Yash Desai', 'Bangalore'),
(116, 'Ishita Patel', 'Surat'),
(117, 'Manav Shah', 'Pune'),
(118, 'Pooja Joshi', 'Mumbai'),
(119, 'Nikhil Mehta', 'Ahmedabad'),
(120, 'Tanya Shah', 'Delhi');


CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders2
(order_id, customer_id, product_name, quantity, amount)
VALUES
(1001, 101, 'Laptop', 2, 55000),
(1002, 101, 'Mouse', 5, 800),
(1003, 101, 'Keyboard', 3, 1500),
(1004, 102, 'Laptop', 1, 62000),
(1005, 102, 'Monitor', 2, 18000),
(1006, 103, 'Mobile Phone', 2, 35000),
(1007, 103, 'Headphones', 4, 4500),
(1008, 104, 'Laptop', 1, 58000),
(1009, 104, 'Printer', 2, 12500),
(1010, 104, 'Keyboard', 5, 1400),
(1011, 105, 'Office Chair', 4, 8500),
(1012, 105, 'Monitor', 3, 17000),
(1013, 106, 'Mobile Phone', 3, 32000),
(1014, 106, 'Headphones', 5, 4200),
(1015, 107, 'Laptop', 2, 60000),
(1016, 107, 'Mouse', 10, 750),
(1017, 108, 'Monitor', 4, 16000),
(1018, 108, 'Keyboard', 6, 1300),
(1019, 109, 'Laptop', 2, 57000),
(1020, 109, 'Printer', 3, 13500),
(1021, 109, 'Mouse', 8, 700),
(1022, 110, 'Mobile Phone', 2, 36000),
(1023, 110, 'Headphones', 3, 4800),
(1024, 111, 'Laptop', 1, 65000),
(1025, 111, 'Monitor', 2, 19000),
(1026, 112, 'Printer', 4, 12000),
(1027, 112, 'Keyboard', 7, 1200),
(1028, 113, 'Laptop', 3, 54000),
(1029, 113, 'Mouse', 6, 850),
(1030, 113, 'Headphones', 4, 5000),
(1031, 114, 'Mobile Phone', 2, 34000),
(1032, 114, 'Monitor', 3, 17500),
(1033, 115, 'Laptop', 2, 59000),
(1034, 115, 'Printer', 2, 14000),
(1035, 116, 'Office Chair', 5, 9000),
(1036, 117, 'Laptop', 1, 61000),
(1037, 117, 'Keyboard', 8, 1250),
(1038, 118, 'Mobile Phone', 3, 33000),
(1039, 118, 'Headphones', 6, 4300),
(1040, 119, 'Laptop', 2, 56000),
(1041, 119, 'Monitor', 2, 18500),
(1042, 119, 'Printer', 1, 15000),
(1043, 121, 'Laptop', 1, 60000),
(1044, 122, 'Monitor', 2, 17000);

CREATE TABLE Products2 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Products2
(product_id, product_name, category, price)
VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mobile Phone', 'Electronics', 35000),
(203, 'Monitor', 'Electronics', 18000),
(204, 'Printer', 'Electronics', 14000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Headphones', 'Accessories', 4500),
(208, 'Office Chair', 'Furniture', 9000),
(209, 'Webcam', 'Accessories', 3500),
(210, 'Tablet', 'Electronics', 28000),
(211, 'Desk', 'Furniture', 15000),
(212, 'USB Hub', 'Accessories', 1200);

CREATE TABLE Departments2 (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);


INSERT INTO Departments2
(department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Support');


CREATE TABLE Employees2 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2)
);


INSERT INTO Employees2 
(employee_id, employee_name, department_id, designation, salary)
VALUES
(301, 'Amit Shah', 1, 'Sales Executive', 45000),
(302, 'Bhavna Patel', 1, 'Sales Executive', 48000),
(303, 'Chirag Mehta', 1, 'Sales Manager', 75000),
(304, 'Disha Sharma', 2, 'Marketing Executive', 50000),
(305, 'Esha Desai', 2, 'Marketing Manager', 78000),
(306, 'Farhan Khan', 3, 'Financial Analyst', 65000),
(307, 'Gauri Joshi', 3, 'Finance Manager', 90000),
(308, 'Harsh Patel', 4, 'HR Executive', 48000),
(309, 'Isha Shah', 5, 'Software Engineer', 70000),
(310, 'Jay Mehta', 5, 'System Administrator', 68000),
(311, 'Kriti Desai', 6, 'Operations Executive', 52000),
(312, 'Lalit Shah', NULL, 'Sales Executive', 46000);

select * from Customers2

select * from Orders2

select * from Products2

select * from Departments2

select * from Employees2

--1)
SELECT
c.customer_id,
c.customer_name,
c.city,
COUNT(o.order_id) AS total_number_of_orders,
SUM(o.quantity) AS total_quantity_purchased,
SUM(o.quantity * o.amount) AS total_purchase_value,
AVG(o.quantity * o.amount) AS average_order_value
FROM Customers2 c
INNER JOIN Orders2 o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name,c.city
HAVING COUNT(o.order_id) >= 3
AND SUM(o.quantity * o.amount) > 75000
ORDER BY total_purchase_value DESC;

--2)
select
c.city,
COUNT(DISTINCT c.customer_id) as Total_Customers,
COUNT(o.order_id) as Total_Orders,
SUM(o.quantity) as Total_Quantity_Sold,
SUM(o.quantity * o.amount) as Total_Sales_Value,
AVG(o.amount) as Average_Order_Value
from Customers2 as c
inner join Orders2 as o 
on c.customer_id = o.customer_id
group by
c.city
having 
SUM( o.amount) > 100000
order by Total_Sales_Value desc;

--3)
SELECT 
c.customer_id,
c.customer_name,
c.city,
COUNT(o.order_id) AS number_of_orders,
SUM(o.amount) AS total_purchase_value,
MAX(o.amount) AS highest_transaction_value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING MAX(o.amount) > 25000 
AND SUM(o.amount) > 50000
ORDER BY highest_transaction_value DESC ;

--4)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Purchased,
SUM(o.quantity * o.amount) AS Total_Purchase_Value,
SUM(o.quantity * o.amount) / COUNT(o.order_id) AS Average_Order_Value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) > 4
ORDER BY
Number_of_Orders DESC,
Total_Purchase_Value DESC;


--5)
SELECT 
p.product_name,
COUNT(o.order_id) AS number_of_orders,
SUM(o.quantity) AS total_quantity_sold,
SUM(o.quantity * o.amount) AS total_revenue,
AVG(o.amount) AS avg_order_amount,
MAX(o.amount) AS highest_order_amount
FROM Products2 p
JOIN Orders2 o ON p.product_name = o.product_name
GROUP BY p.product_id, p.product_name
HAVING COUNT(o.order_id) >= 3
ORDER BY total_revenue DESC;


--6)
SELECT
o.product_name AS Product_Name,
SUM(o.quantity) AS Total_Quantity_Sold,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity * o.amount) AS Total_Revenue
FROM Orders2 o
GROUP BY o.product_name
HAVING SUM(o.quantity) > 100
AND COUNT(o.order_id) > 5
ORDER BY
Total_Revenue DESC;

--7)
SELECT
c.city AS City,
COUNT(DISTINCT c.customer_id) AS Total_Customers,
COUNT(DISTINCT o.order_id) AS Total_Orders,
SUM(o.quantity) AS Total_Quantity_Sold,
SUM(o.quantity * o.amount) AS Total_Revenue
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING COUNT(DISTINCT c.customer_id) >= 3
 AND COUNT(DISTINCT o.order_id) >= 5
 AND SUM(o.quantity * o.amount) > 200000
ORDER BY Total_Revenue DESC;

--8)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
MIN(o.quantity * o.amount) AS Minimum_Order_Value,
MAX(o.quantity * o.amount) AS Maximum_Order_Value,
AVG(o.quantity * o.amount) AS Average_Order_Value,
SUM(o.quantity * o.amount) AS Total_Purchase_Value
FROM Customers2 c INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.customer_name,c.city
HAVING COUNT(o.order_id) >= 3
ORDER BY Total_Purchase_Value DESC;

--9)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Purchased,
SUM(o.quantity * o.amount) AS Total_Purchase_Value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 5
ORDER BY Number_of_Orders DESC;

--10)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity * o.amount) AS Total_Purchase_Value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) BETWEEN 1 AND 2
ORDER BY Total_Purchase_Value DESC;

--11)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Purchased,
SUM(o.quantity * o.amount) AS Total_Purchase_Value
FROM Customers2 c
LEFT JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY c.customer_id;

--12)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City
FROM Customers2 c
LEFT JOIN Orders2 o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--13)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity * o.amount) AS Total_Purchase_Value
FROM Customers2 c LEFT JOIN Orders2 o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city;

--14)
SELECT 
p.product_id,
p.product_name,
p.category,
p.price
FROM Products2 p
LEFT JOIN Orders2 o ON p.product_name = o.product_name
WHERE o.order_id IS NULL;

--15)
SELECT 
c.customer_id,
c.customer_name,
c.city,
o.order_id,
o.product_name,
o.quantity,
o.amount
FROM customers2 c
FULL OUTER JOIN Orders2 o
ON c.customer_id = o.customer_id;

--16)
SELECT 
c.customer_id,
c.customer_name,
o.order_id,
o.product_name,
o.amount
FROM Customers2 c
FULL OUTER JOIN Orders2 o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL
OR o.customer_id IS NULL;

--17)
SELECT 
c.customer_id,
c.customer_name,
c.city,
o.order_id,
o.product_name,
o.quantity,
o.amount,
o.quantity * o.amount AS transaction_value
FROM Customers2 c
FULL OUTER JOIN Orders2 o
ON c.customer_id = o.customer_id;

--18)
SELECT 
c.customer_id,
c.customer_name,
c.city
FROM Customers2 c
LEFT JOIN Orders2 o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--19)
SELECT 
p.product_id,
p.product_name,
p.category,
p.price
FROM Products2 p
LEFT JOIN Orders2 o ON p.product_name = o.product_name
WHERE o.order_id IS NULL;

--20)
SELECT 
c.customer_id,
c.customer_name,
c.city
FROM Customers2 c
LEFT JOIN Orders2 o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--21)
SELECT 
p.product_id,
p.product_name,
p.category,
p.price
FROM Products2 p
LEFT JOIN Orders2 o
ON p.product_name = o.product_name
WHERE o.order_id IS NULL
ORDER BY p.price DESC;

--22)
SELECT 
c.customer_id,
c.customer_name,
c.city,
p.product_id,
p.product_name,
p.category
FROM Customers2 c
CROSS JOIN Products2 p;

--23)
SELECT COUNT(*) AS total_combinations
FROM Customers2 c
CROSS JOIN Products2 p;

--24)
SELECT
c.City,
p.product_name
FROM Customers2 c
CROSS JOIN Products2 p
ORDER BY
c.City,
p.Product_Name;

--25)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Purchased,
SUM(o.quantity * o.amount) AS Total_Revenue,
SUM(o.quantity * o.amount) / COUNT(o.order_id) AS Average_Order_Value,
MAX(o.quantity * o.amount) AS Maximum_Order_Value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 3
ORDER BY Total_Revenue DESC, Number_of_Orders DESC, Average_Order_Value DESC;

--26)
SELECT
p.product_name AS Product_Name,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Sold,
SUM(o.quantity * o.amount) AS Total_Revenue,
SUM(o.quantity * o.amount) / COUNT(o.order_id) AS Average_Order_Value,
MAX(o.quantity * o.amount) AS Maximum_Order_Value
FROM Products2 p
INNER JOIN Orders2 o ON p.product_name = o.product_name
GROUP BY p.product_id, p.product_name
HAVING COUNT(o.order_id) >= 5 AND SUM(o.quantity * o.amount) > 200000
ORDER BY Total_Revenue DESC;

--27)
SELECT
c.city AS City,
COUNT(DISTINCT c.customer_id) AS Number_of_Customers,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Sold,
SUM(o.quantity * o.amount) AS Total_Revenue,
SUM(o.quantity * o.amount) / COUNT(o.order_id) AS Average_Order_Value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING COUNT(DISTINCT c.customer_id) >= 5 AND COUNT(o.order_id) > 10
AND SUM(o.quantity * o.amount) > 500000
ORDER BY Total_Revenue DESC;

--28)
/*SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.city AS City,
COUNT(o.order_id) AS Number_of_Qualifying_Orders,
SUM(o.quantity * o.amount) AS Total_Value_of_Qualifying_Orders
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.quantity * o.amount > 25000
GROUP BY
c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 2
ORDER BY Total_Value_of_Qualifying_Orders DESC;*/

--29)
SELECT
o.product_name AS Product_Name,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Sold,
SUM(o.quantity * o.amount) AS Total_Revenue,
SUM(o.quantity * o.amount) / COUNT(o.order_id) AS Average_Order_Value
FROM Orders2 o
GROUP BY o.product_name
HAVING SUM(o.quantity) > 100
AND COUNT(o.order_id) >= 5
AND SUM(o.quantity * o.amount) > 100000
ORDER BY Total_Revenue DESC;

--30)
SELECT
c.customer_id AS Customer_ID,
c.customer_name AS Customer_Name,
c.City AS City,
COUNT(o.order_id) AS Number_of_Orders,
SUM(o.quantity) AS Total_Quantity_Purchased,
SUM(o.quantity * o.amount) AS Total_Purchase_Value,
SUM(o.quantity * o.amount) / COUNT(o.order_id) AS Average_Order_Value,
MIN(o.quantity * o.amount) AS Minimum_Order_Value,
MAX(o.quantity * o.amount) AS Maximum_Order_Value
FROM Customers2 c
INNER JOIN Orders2 o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.City
HAVING COUNT(o.order_id) >= 3
AND SUM(o.quantity * o.amount) > 100000
ORDER BY Total_Purchase_Value DESC;