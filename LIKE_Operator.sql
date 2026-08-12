--- Like Operator
-- create a table

-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');

select * from Employees_US

-- questions

--1) Find Employees whose Last Name starts with 'S'.
SELECT * FROM Employees_US WHERE LastName like 'S%'
select * from employees_us where lastname like 's%'

--2) Find Employees whose First Name ends with 'a'.
SELECT * FROM Employees_US WHERE FirstName like '%a'
select * from employees_us where firstname like '%a'

--3) Find Employees whose Department contains 'Eng'.
SELECT * FROM Employees_US WHERE Department like '%eng%'
select * from employees_us where department like '%eng%'

--4) Find Employees whose Last Name is exactly 5 characters long.
SELECT * FROM Employees_US WHERE LastName like '_____'
select * from employees_us where lastname like '_____'

--5) Find Employees whose First Name starts with 'C' or 'D'.
SELECT * FROM Employees_US WHERE FirstName like '[CD]%'
select * from employees_us where firstname like '[CD]%' 

--6) Find Employees whose Last Name contains 'son'.
SELECT * FROM Employees_US WHERE LastName like '%son%'
select * from employees_us where lastname like '%son%'

--7) Find Employees whose First Name contains the letter 'i' as the second character.
SELECT * FROM Employees_US WHERE FirstName like '_i%'
select * from employees_us where firstname like '_i%'

--8) Find Employees whose Last Name starts with any letter between 'A' and 'L'.
SELECT * FROM Employees_US WHERE LastName like '[a-l]%'
select * from employees_us where lastname like '[a-l]%'

--9) Find Employees whose First Name does not contain 'o'.
SELECT * FROM Employees_US WHERE FirstName not like '%o%'
select * from employees_us where firstname not like '%o%'

--10) Find Employees whose Last Name ends with 'a' and is exactly 5 characters long.
SELECT * FROM Employees_US WHERE LastName like '____a'
select * from employees_us where lastname like '____a'


--11) Find Employees whose Department starts with 'Mar' and ends with 'ing'.
SELECT * FROM Employees_US WHERE Department like 'Mar%ing'
select * from employees_us where department like 'mar%ing'

--12) Find Employees whose First Name has an 'a' in the third position.
SELECT * FROM Employees_US WHERE FirstName like '__a%'
select * from employees_us where firstname like '__a%'

--13) Find Employees whose Last Name starts with 'Br' or 'Bl'.
SELECT * FROM Employees_US WHERE LastName like 'Br%' or LastName LIKE 'Bl%'
select * from employees_us where lastname like 'br%' or lastname like 'bl%'

--14) Find Employees whose First Name starts with a vowel.
SELECT * FROM Employees_US WHERE FirstName like '[aeiou]%'
select * from employees_us where firstname like '[aeiou]%'

--15) Find Employees whose First Name does not start with a consonant.
SELECT * FROM Employees_US WHERE FirstName not like '[^aeiou]%'
select * from employees_us where firstname not like '[^aeiou]%'

--16) Find Employees whose First Name starts with a consonant.
SELECT * FROM Employees_US WHERE FirstName not like '[aeiou]%'
select * from employees_us where firstname like '[^aeiou]%'