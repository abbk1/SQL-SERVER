select name from sys.databases 
use [Sales Database]

select * from Sales

select distinct ProductID from Sales

select SUM(Quantity) [Totam QTY], AVG(Quantity) [Avg QRT] from Sales

-- sum of qty, avg qty, sum of total amount, avg of total amount for a distinct ProductID

select 
ProductID,
SUM(Quantity) [Sum Of QTY],
AVG(Quantity) [AVG Of QTY],
SUM(TotalAmount) [Sum Of TotalAmount],
AVG(TotalAmount) [AVG Of TotalAmount]
from Sales group by ProductID 

-- sum of qty, avg qty, sum of total amount, avg of total amount for a distinct ProductID and StoreID
select * from Sales

select 
ProductID,
StoreID,
SUM(Quantity) [Sum of QTY],
AVG(Quantity) [Avg QTY],
SUM(TotalAmount) [Sum of Amount],
AVG(TotalAmount) [Avg of Amount]
from Sales GROUP BY ProductID, StoreID

select count(*) [Total Row] from Sales

-- exclude null cell in counting
select  count(PaymentMethod) [Total Pay. Count] from Sales

select * from Sales

select count(distinct ProductID) [Distinct ProductID] from Sales

select count(distinct PaymentMethod) [Distinct Pay Mode] from Sales

select PaymentMethod, 
	count(PaymentMethod) [Count Pay Mode] 
from Sales
GROUP BY PaymentMethod

select PaymentMethod, 
	count(*) [Count Pay Mode] 
from Sales
GROUP BY PaymentMethod


select * from Sales

select PaymentMethod, SUM(TotalAmount) [Total Sale] 
from sales group by PaymentMethod

select 
	ProductID,
	PaymentMethod,
	SUM(TotalAmount) [Total Sale]
from Sales 
group by ProductID, PaymentMethod
order by ProductID


select * from Sales

-- cal. total qty, avg qty, total sale, avg sale using group by
select 
	ProductID,
	SUM(Quantity) [Total QTY],
	AVG(Quantity) [AVG QTY],
	SUM(TotalAmount) [Total Sale],
	AVG(TotalAmount) [AVG Sale]
from Sales
group by ProductID
having SUM(TotalAmount) < 700 and AVG(Quantity) = 7

select 
	ProductID,
	SUM(Quantity) [Total QTY],
	AVG(Quantity) [AVG QTY],
	SUM(TotalAmount) [Total Sale],
	AVG(TotalAmount) [AVG Sale]
from Sales
group by ProductID
having SUM(TotalAmount) < 700

select * from Sales

select productid, sum(TotalAmount) [Total Sale] from Sales
group by ProductID

-- select with where, group by and having conditions
select productid, sum(TotalAmount) [Total Sale] from Sales
where TotalAmount <200
group by ProductID
having sum(TotalAmount) < 500

-- INNER JOIN PRACTICE

-- CREATING TABLES


use [Sales Database]

--Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')
-- END CREATING 

SELECT * FROM table1

SELECT * FROM table2

-- iner join
select 
	a.C1, 
	a.C2, 
	b.C3
from table1 a 
inner join table2 b 
on a.C1=b.C1

-- left outer join or left join
SELECT * FROM table1

SELECT * FROM table2
-- left join return all data from left table including NULL record and corresponding matching record from right table
select 
	a.C1, 
	a.C2, 
	b.C3 
from table1 a 
left join table2 b 
on a.C1=b.C1


-- right outer join or right join
SELECT * FROM table1

SELECT * FROM table2
-- right join return all data from right table including NULL record and corresponding matching record from left table
select 
	a.C1, 
	a.C2,
	b.C1,
	b.C3 
from table1 a 
right join table2 b 
on a.C1=b.C1

-- left and right anti-join is simply filtering join result with where clause statement
SELECT * FROM table1

SELECT * FROM table2

-- left anti-join
select 
	a.C1, 
	a.C2,
	b.C1,
	b.C3 
from table1 a 
left join table2 b 
on a.C1=b.C1 where b.C1 IS NULL

-- right anti-join
select 
	a.C1, 
	a.C2,
	b.C1,
	b.C3 
from table1 a 
right join table2 b 
on a.C1=b.C1 where a.C1 IS NULL

-- full outer join join tables with both concept of inner join, left, and right join

select * from table1

select * from table2

--full outer join query
select 
	a.C1,
	a.C2,
	b.C3
from table1 a full outer join table2 b 
on a.C1=b.C1 

-- self join can be done using join or inner join on same table

select * from table1

select * from table1

select * from table1 as a  inner join table1 as b on a.C1=b.C1

select 
	a.C1,a.C2
from table1 as a 
inner join table1 as b 
on a.C1=b.C1

-- UNION AND UNION ALL
-- union join or append record row-wise 
-- The columns in two table has to be identical 
-- List of columns selected must be the same and same order

-- creating sample tables
create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)

create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)

--truncate table append1

select * from append1

select * from append2

-- union all return duplicate values
select a.C1,a.C2,a.C3 from append1 a
union all
select b.C1,b.C2,b.C3 from append2 b

-- union don't return duplicate values
select a.C1,a.C2,a.C3 from append1 a
union
select b.C1,b.C2,b.C3 from append2 b

select a.C1 [Column A],a.C2 [Column B],a.C3 [Column C] from append1 a
union
select b.C1,b.C2,b.C3 from append2 b




