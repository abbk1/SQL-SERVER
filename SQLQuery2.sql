-- Selecting top n random record from my table

select * from Employees

select top 4 * from Employees

select top 5 EmployeeID, Email, Phone, Salary from Employees where Salary > 60000