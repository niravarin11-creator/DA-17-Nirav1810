create database AmazonEmployeesDB;

use  AmazonEmployeesDB;

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Employees
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'IT', 'Ahmedabad'),
(102, 'Priya Patel', 'priya.patel@gmail.com', 'HR', 'Mumbai'),
(103, 'Amit Shah', 'amit.shah@gmail.com', 'Finance', 'Ahmedabad'),
(104, 'Neha Mehta', 'neha.mehta@gmail.com', 'IT', 'Pune'),
(105, 'Rohan Desai', 'rohan.desai@gmail.com', 'Sales', 'Delhi');

select * from Employees;

--UPPER)
select
UPPER(employee_name) as employee_name
from Employees

SELECT
    employee_id,
    UPPER(city) AS city
FROM Employees;

--LOWER)
SELECT LOWER(email) AS email
FROM Employees;

--LEN)
SELECT LEN('Hello   ');

SELECT
    employee_name,
    LEN(employee_name) AS name_length
FROM Employees;

--DATALENGTH)
SELECT
    employee_name,
    DATALENGTH(employee_name) AS byte_count
FROM Employees;

--LEN V/S DATALENGTH)
SELECT
    LEN(employee_name) AS Character_Count,
    DATALENGTH(employee_name) AS Byte_Count
FROM Employees;

--CONCAT)
SELECT
    CONCAT(employee_name, ' - ', department) AS Employee_Info
FROM Employees;

SELECT CONCAT(
    employee_id,
    ' | ',
    employee_name,
    ' | ',
    department
) AS Employee_Details
FROM Employees;

--CONCAT_WS)
SELECT
    CONCAT_WS(' - ', employee_name, department, city) AS Employee_Info
FROM Employees;

--LEFT)
SELECT
    LEFT(employee_name, 5) AS First_Five_Characters
FROM Employees;

SELECT
    city,
    LEFT(city, 3) AS City_Code
FROM Employees;

--RIGHT)
SELECT
    RIGHT(employee_name, 5) AS Last_Five_Characters
FROM Employees;

--SUBSTRING)
SELECT
    SUBSTRING(employee_name, 1, 5) AS Extracted_Text
FROM Employees;

SELECT
    SUBSTRING(employee_name, 7, 6) AS Last_Name
FROM Employees;

--CHARINDEX)
SELECT
    employee_name,
    CHARINDEX(' ', employee_name) AS Space_Position
FROM Employees;

select * from Employees

--PATINDEX)
SELECT
    employee_name,
    PATINDEX('%Sh%', employee_name) AS Position
FROM Employees;

SELECT
    employee_name,
    PATINDEX('%a%', employee_name) AS Position
FROM Employees;

--REPLACE)
SELECT
    REPLACE(employee_name, ' ', '_') AS Employee_Name
FROM Employees;

SELECT
    REPLACE(email, 'gmail.com', 'company.com') AS Company_Email
FROM Employees;

--TRANSLATE)
SELECT TRANSLATE('123-456-789', '-', '/');

SELECT TRANSLATE('ABC123', 'ABC', 'XYZ');

--TRIM)
SELECT TRIM('   Rahul Sharma   ');

SELECT
    TRIM(employee_name) AS Clean_Name
FROM Employees;

--LTRIM)
SELECT LTRIM('     Rahul');

--RTRIM)
SELECT RTRIM('Rahul     ');

SELECT LTRIM(RTRIM(employee_name))
FROM Employees;

select * from Employees

--REVERSE)
SELECT
    REVERSE(employee_name) AS Reversed_Name
FROM Employees;

--CONCAT)
SELECT CONCAT('Hello', SPACE(5), 'World');

--REPLICATE)
SELECT REPLICATE('*', 10);


--
select
CONCAT(employee_name,REPLICATE('.',5)) as Formatted_Name
from Employees;
