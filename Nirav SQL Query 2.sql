create database EmployeeDB;

use EmployeeDB;

create table Employee(
EmployeeID int primary key,
EmployeeName varchar(50), 
Age int,
Salary int,
Department varchar(50),
);

insert into Employee (EmployeeID,EmployeeName,Department,Salary,Age)
values
(1, 'Amit', 'IT' ,60000, 28),