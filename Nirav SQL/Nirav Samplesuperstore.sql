Create database superstoredb;

use superstoredb;

select * from dbo.samplesuperstore;

select *
from dbo.samplesuperstore
where Country_Region = 'United States'
and City = 'Henderson' ;

--1)
select 
Order_ID,
Order_Date,
Customer_Name,
Category,
Sales,
Profit
from dbo.samplesuperstore;

--2)
select Order_ID
from dbo.samplesuperstore
where Sales > 500;

