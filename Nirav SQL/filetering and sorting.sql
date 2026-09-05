create database Employeedb;
use Employeedb;

create table Employee(
id int primary key,
emp_name varchar(50),
department VARCHAR(50),
    salary INT,
    age INT
);

INSERT INTO Employee (id, emp_name, department, salary, age)
VALUES
(1, 'Amit', 'IT', 60000, 28),
(2, 'Sneha', 'HR', 45000, 25),
(3, 'Raj', 'Finance', 70000, 32),
(4, 'Simran', 'IT', 52000, 27),
(5, 'Karan', 'Marketing', 40000, 24);

--Practise questions 
--1)
select * from Employee 
where salary > 40000;

--2)
select * from Employee
where department = 'IT';

--3) 
SELECT * FROM Employee
WHERE age BETWEEN 25 AND 30;

--4)
select * from Employee
where emp_name like 'S%';

--5)
select * from Employee Top 3 
where salary DESC

--6)
select * from Employee
where department = not 'HR';