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

select productid, sum(TotalAmount) [Total Sale] from Sales
where TotalAmount <200
group by ProductID
having sum(TotalAmount) < 500