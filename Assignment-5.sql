--Write a SQL query to select all columns and rows from the Employees table.
select * from Employees

--Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.
select e.FirstName,e.LastName,e.Email from Employees as e where DepartmentID in (101)

--Write a SQL query to find the total number of employees in the Employees table.
select COUNT(EmployeeID) [Total Number of Employees] from Employees

--Write a SQL query to find the details of employees who were hired in the year 2020.
select * from Employees where format(HireDate,'yyy') = 2020

--Write a SQL query to update the salary of 'Jane Doe' to 90,000.
update Employees set Salary = 90000 where FirstName = 'Jane' and LastName = 'Doe'


