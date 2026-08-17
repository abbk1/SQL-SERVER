--- Question Set Two
select * from Employees

--How do you select employeesfrom depatment IT and have salary >= 75000
select * from Employees where Department like 'IT' and Salary >= 75000

-- find employees who works in HR depart. or salary < 60000
select * from Employees where Department in ('HR') or Salary < 60000

--How do you select employees who do not work in the finance department
select * from Employees where Department not in ('Finance')

--or

select * from Employees where not Department = 'Finance'

-- How do you find employees whose salary between 60000 and 70000 and work in finance department
select * from Employees where (Salary between 60000 and 70000) and Department in ('Finance')

--How do you find employees who work in IT department and have no salary greater than 80000
select * from Employees where Department in ('IT') and Salary <= 80000

--How do you find employees who works in IT or HR department and have salary greater than 65000
select * from Employees where Department in ('Finance','HR') and Salary > 65000

--How do you select employees whose last name start with D and do not work in HR department
select * from employees where LastName like 'D%' and not Department like 'HR'

--fine employee who do not work in IT department and have salary greater than 70000
select * from Employees where Department not in ('IT') and Salary > 70000

-- How do you select employees who works in th IT department and either have a salary greater than 75000 or or have first name 'laura' 
select * from Employees where Department in ('IT') and (Salary > 75000 or FirstName like 'laura')

--How do you select employees who do not work in HR and IT
select * from employees where Department not in ('HR','IT')


