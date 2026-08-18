-- Creating the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Creating the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);


-- Inserting data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(10, 'John', 'Smith', 'john.smith1@example.com', null, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(104, 'Sale'),
(102, 'Finance'),
(103, 'IT');

select * from Employees

select * from Departments

--Write a SQL query to list the names of employees along with the names of the departments they work in.
select FirstName, LastName, DepartmentName from Employees join Departments on Employees.DepartmentID=Departments.DepartmentID

--Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
select * from Employees right join Departments on Employees.DepartmentID=Departments.DepartmentID

--Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
select e.LastName, e.FirstName, e.DepartmentID
from Employees as e left join Departments as d on e.DepartmentID=d.DepartmentID where e.DepartmentID is null

--Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
SELECT E2.FirstName, E2.LastName

FROM Employees E1

JOIN Employees E2

ON E1.DepartmentID = E2.DepartmentID

WHERE E1.FirstName = 'Jane' AND E1.LastName = 'Doe'

AND E2.EmployeeID <> E1.EmployeeID;

--Write a SQL query to find the department with the highest total salary paid to its employees.
select distinct d.DepartmentID,d.DepartmentName from Employees as e inner join Departments as d on e.DepartmentID=d.DepartmentID where d.DepartmentID=
(select Departmentid from Employees where Salary = (select MAX(Salary) from Employees))

