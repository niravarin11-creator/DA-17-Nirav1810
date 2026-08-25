Create Database SchoolDB;
use SchoolDB;
Create Table Students(
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50),
Age INT,
Course VARCHAR(50),
Marks DECIMAL(5,2)
);

INSERT INTO Students (StudentID, StudentName, Age, Course, Marks)
VALUES 
(1, 'Amit Sharma', 21, 'Data Analytics', 85.50),
(2, 'Neha Gupta', 22, 'Computer Science', 90.75),
(3, 'Ravi Singh', 20, 'Business Analytics', 78.25);
select * from Students;