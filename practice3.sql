select * from [dbo].[Employees]

select EmployeeID, 
	   FirstName, 
	   LastName, 
	   Salary 
from [dbo].[Employees] 
	where EmployeeID = 2

select FirstName, LastName, Salary from [dbo].[Employees] where Salary >= 70000

select distinct FirstName, LastName, Salary from [dbo].[Employees] where Salary >= 70000