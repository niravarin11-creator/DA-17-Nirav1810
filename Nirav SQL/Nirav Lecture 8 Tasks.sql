CREATE DATABASE FunctionsPractice;
GO
 
USE FunctionsPractice;
GO
 
-- 2. Customers (has NULL phone / mobile / office_phone / home_phone values)
CREATE TABLE Customers (
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    phone         VARCHAR(15) NULL,
    mobile        VARCHAR(15) NULL,
    office_phone  VARCHAR(15) NULL,
    home_phone    VARCHAR(15) NULL
);
 
INSERT INTO Customers (customer_id, customer_name, phone, mobile, office_phone, home_phone)
VALUES
(1,  'Aarav Sharma',  '9876543210', '9876543210', NULL,         '0792345001'),
(2,  'Priya Patel',   NULL,         NULL,         '0792345002', '0792345003'),
(3,  'Rahul Mehta',   '9823456780', NULL,         NULL,         NULL),
(4,  'Neha Shah',     NULL,         '9812345678', '0792345004', NULL),
(5,  'Vikram Singh',  '9898989898', '9898989898', '0792345005', '0792345006'),
(6,  'Ananya Desai',  NULL,         NULL,         NULL,         NULL),
(7,  'Rohan Gupta',   '9765432109', NULL,         NULL,         '0792345007'),
(8,  'Sneha Joshi',   NULL,         NULL,         '0792345008', NULL),
(9,  'Karan Shah',    '9712345670', '9712345670', NULL,         NULL),
(10, 'Meera Patel',   NULL,         '9687654321', NULL,         NULL);
 
-- 3. Products (prices have 3 decimals so ROUND / CEILING / FLOOR show a difference)
CREATE TABLE Products (
    product_id   INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price        DECIMAL(10,3) NOT NULL,
    quantity     INT NOT NULL
);
 
INSERT INTO Products (product_id, product_name, price, quantity)
VALUES
(1, 'Laptop',     72999.567, 5),
(2, 'Monitor',    12499.499, 12),
(3, 'Keyboard',    1499.250, 40),
(4, 'Mouse',        599.755, 75),
(5, 'Printer',    10999.999, 8),
(6, 'Headphones',  2499.501, 30),
(7, 'Webcam',      3299.125, 18),
(8, 'USB Cable',    149.449, 200);
 
-- 4. Orders (has NULL discount and NULL delivery_date values)
CREATE TABLE Orders (
    order_id      INT PRIMARY KEY,
    customer_id   INT NOT NULL,
    order_date    DATE NOT NULL,
    delivery_date DATE NULL,
    quantity      INT NOT NULL,
    price         DECIMAL(10,3) NOT NULL,
    discount      DECIMAL(5,2) NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
 
INSERT INTO Orders (order_id, customer_id, order_date, delivery_date, quantity, price, discount)
VALUES
(1001, 1,  '2025-01-05', '2025-01-09', 2,  72999.567, 5.00),
(1002, 2,  '2025-01-18', '2025-01-25', 5,  1499.250,  NULL),
(1003, 3,  '2025-01-29', '2025-02-03', 1,  12499.499, 10.00),
(1004, 4,  '2025-02-02', '2025-02-06', 10, 599.755,   NULL),
(1005, 5,  '2025-02-14', '2025-02-20', 3,  10999.999, 7.50),
(1006, 6,  '2025-02-27', NULL,         4,  2499.501,  NULL),
(1007, 7,  '2025-03-03', '2025-03-08', 6,  3299.125,  2.50),
(1008, 8,  '2025-03-15', '2025-03-24', 20, 149.449,   NULL),
(1009, 9,  '2025-03-31', '2025-04-04', 1,  72999.567, 12.00),
(1010, 10, '2025-04-07', '2025-04-12', 2,  12499.499, NULL),
(1011, 1,  '2025-04-19', NULL,         7,  1499.250,  5.00),
(1012, 2,  '2025-05-01', '2025-05-05', 15, 599.755,   NULL),
(1013, 3,  '2025-05-16', '2025-05-23', 2,  10999.999, 8.00),
(1014, 4,  '2025-05-30', '2025-06-03', 3,  2499.501,  NULL),
(1015, 5,  '2025-06-10', '2025-06-14', 5,  3299.125,  3.00),
(1016, 6,  '2025-06-24', NULL,         50, 149.449,   NULL),
(1017, 7,  '2025-07-04', '2025-07-10', 1,  72999.567, 15.00),
(1018, 8,  '2025-07-21', '2025-07-26', 8,  1499.250,  NULL),
(1019, 9,  '2025-08-08', '2025-08-12', 4,  12499.499, 6.00),
(1020, 10, '2025-08-28', NULL,         9,  599.755,   NULL);
 
-- 5. Transactions (positive, negative and zero profit; one zero sales_amount for NULLIF)
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    profit         DECIMAL(12,2) NOT NULL,
    sales_amount   DECIMAL(12,2) NOT NULL
);
 
INSERT INTO Transactions (transaction_id, profit, sales_amount)
VALUES
(1,   5200.50, 25000.00),
(2,  -1800.75, 12000.00),
(3,      0.00,  8000.00),
(4,   3400.00, 17000.00),
(5,  -950.25,   6500.00),
(6,   7800.80, 39000.00),
(7,      0.00,     0.00),
(8,  -2600.00, 15000.00),
(9,   1250.40,  5000.00),
(10,  4100.00, 20500.00),
(11, -300.00,      0.00),
(12,  6400.60, 32000.00);
 
-- 6. Shapes (radius column for the circle-area task)
CREATE TABLE Shapes (
    shape_id INT PRIMARY KEY,
    radius   DECIMAL(10,2) NOT NULL
);
 
INSERT INTO Shapes (shape_id, radius)
VALUES
(1, 2.00),
(2, 3.50),
(3, 5.00),
(4, 7.25),
(5, 10.00);
GO
 
-- 7. Verify the data (expected counts: 10, 8, 20, 12, 5)
SELECT 'Customers'    AS TableName, COUNT(*) AS Total_Rows FROM Customers
UNION ALL SELECT 'Products',     COUNT(*) FROM Products
UNION ALL SELECT 'Orders',       COUNT(*) FROM Orders
UNION ALL SELECT 'Transactions', COUNT(*) FROM Transactions
UNION ALL SELECT 'Shapes',       COUNT(*) FROM Shapes;
GO
 
USE FunctionsPractice;
GO

-- Task 1: absolute profit
SELECT 
transaction_id,
profit,
ABS(profit) AS Absolute_Profit
FROM Transactions;

-- Task 2: price rounded to 2 decimals
SELECT
product_name, 
price,
ROUND(price, 2) AS Rounded_Price 
FROM Products;

-- Task 3: ceiling of price
SELECT 
product_name,
price, 
CEILING(price) AS Ceiling_Price 
FROM Products;

-- Task 4: floor of price
SELECT 
product_name, 
price, 
FLOOR(price) AS Floor_Price 
FROM Products;

-- Task 5: square of quantity
SELECT 
order_id, 
quantity, 
POWER(quantity, 2) AS Quantity_Squared 
FROM Orders;

-- Task 6: square root of a numeric column
SELECT
product_name, 
price, 
SQRT(price) AS Square_Root_Price 
FROM Products;

-- Task 7: total order value rounded to 2 decimals
SELECT
order_id,
quantity,
price,
ROUND(quantity * price, 2) AS Total_Order_Value 
FROM Orders;

-- Task 8: positive / negative / zero profit using SIGN()
SELECT
transaction_id, 
profit, 
SIGN(profit) AS Sign_Value,
CASE SIGN(profit) WHEN 1 THEN 'Positive' WHEN -1 THEN 'Negative' ELSE 'Zero' END AS Profit_Status
FROM Transactions;

-- Task 9: random number between 1 and 100
SELECT CAST(RAND() * 100 AS INT) + 1 AS Random_Number;
-- Task 9 (different number for every row)
SELECT order_id, 
ABS(CHECKSUM(NEWID())) % 100 + 1 AS Random_Number FROM Orders;

-- Task 10: area of a circle
SELECT
shape_id, 
radius,
ROUND(PI() * POWER(radius, 2), 2) AS Circle_Area
FROM Shapes;

-- Task 11: current date and time
SELECT GETDATE() AS Current_DateTime;

-- Task 12: today's date without time
SELECT CAST(GETDATE() AS DATE) AS Today_Date;

-- Task 13: year from order date
SELECT 
order_id,
order_date, 
YEAR(order_date) AS Order_Year 
FROM Orders;

-- Task 14: month number from order date
SELECT
order_id, 
order_date,
MONTH(order_date) AS Order_Month 
FROM Orders;

-- Task 15: month name from order date
SELECT
order_id, 
order_date,
DATENAME(MONTH, order_date) AS Month_Name 
FROM Orders;

-- Task 16: weekday name for every order
SELECT 
order_id,
order_date,
DATENAME(WEEKDAY, order_date) AS Weekday_Name 
FROM Orders;

-- Task 17: days between order date and delivery date
SELECT order_id, order_date, delivery_date,
       DATEDIFF(DAY, order_date, delivery_date) AS Delivery_Days
FROM Orders;

-- Task 18: expected delivery date (order date + 7 days)
SELECT 
order_id,
order_date, 
DATEADD(DAY, 7, order_date) AS Expected_Delivery_Date 
FROM Orders;

-- Task 19: last day of the month for every order date
SELECT
order_id,
order_date, 
EOMONTH(order_date) AS Month_End
FROM Orders;

-- Task 20: orders placed in each year and month
SELECT YEAR(order_date) AS Order_Year,
MONTH(order_date) AS Order_Month, 
COUNT(*) AS Total_Orders
FROM Orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Order_Year, Order_Month;

-- Task 21: customers whose phone is NULL
SELECT * FROM Customers WHERE phone IS NULL;

-- Task 22: customers whose phone is NOT NULL
SELECT * FROM Customers WHERE phone IS NOT NULL;

-- Task 23: show 'Not Available' instead of NULL phone
SELECT customer_name, 
ISNULL(phone, 'Not Available') AS Phone 
FROM Customers;

-- Task 24: show 0 instead of NULL discount
SELECT 
order_id,
price,
ISNULL(discount, 0) AS Discount 
FROM Orders;

-- Task 25: first available contact number
SELECT customer_name,
       COALESCE(mobile, office_phone, home_phone, 'No Contact') AS Contact_Number
FROM Customers;

-- Task 26: number of rows using COUNT(*)
SELECT COUNT(*) AS Total_Rows FROM Customers;

-- Task 27: number of non-NULL values in a column
SELECT COUNT(phone) AS Non_Null_Phone_Count FROM Customers;

-- Task 28: average while handling NULLs
SELECT AVG(discount) AS Average_Ignoring_NULLs FROM Orders;
SELECT AVG(ISNULL(discount, 0)) AS Average_NULL_As_Zero FROM Orders;

-- Task 29: percentage without divide-by-zero error
SELECT transaction_id, profit, sales_amount,
       ROUND(profit * 100.0 / NULLIF(sales_amount, 0), 2) AS Profit_Percentage
FROM Transactions;

-- Task 30: undelivered orders and days since order
SELECT 
order_id,
order_date, 
DATEDIFF(DAY, order_date, GETDATE()) AS Days_Since_Order
FROM Orders
WHERE delivery_date IS NULL;

--Industry Scenario Tasks--

-- Scenario 1: E-commerce delivery analysis
-- If delivery_date is NULL, count days from order_date until today
SELECT
    order_id,
    order_date,
    delivery_date,
    DATEDIFF(DAY, order_date, ISNULL(delivery_date, GETDATE())) AS Delivery_Days
FROM Orders;

-- Scenario 2: Monthly sales report
SELECT
    YEAR(order_date)               AS Order_Year,
    MONTH(order_date)              AS Order_Month,
    DATENAME(MONTH, order_date)    AS Month_Name,
    SUM(quantity * price)          AS Total_Sales
FROM Orders
GROUP BY YEAR(order_date), MONTH(order_date), DATENAME(MONTH, order_date)
ORDER BY Order_Year, Order_Month;

-- Scenario 3: Customer contact report (Mobile > Office > Home > No Contact)
SELECT
    customer_id,
    customer_name,
    COALESCE(mobile, office_phone, home_phone, 'No Contact') AS Contact_Number
FROM Customers;

-- Scenario 4: Financial profit report (no divide-by-zero error)
SELECT
    product_name AS Product,
    sales        AS Sales,
    cost         AS Cost,
    sales - cost AS Profit,
    ROUND((sales - cost) * 100.0 / NULLIF(sales, 0), 2) AS Profit_Percentage
FROM ProductSales;

-- Scenario 5: Order value report (NULL discount treated as 0, discount is a percentage)
SELECT
    order_id,
    quantity,
    price,
    ISNULL(discount, 0) AS Discount,
    ROUND(quantity * price * (1 - ISNULL(discount, 0) / 100.0), 2) AS Total_Value
FROM Orders;

-- Scenario 6: Month-end business report
SELECT
    transaction_id,
    transaction_date,
    DATENAME(MONTH, transaction_date) AS Month_Name,
    EOMONTH(transaction_date)         AS Month_End_Date
FROM Transactions;