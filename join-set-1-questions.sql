

create database [SQL Questions]

use [SQL Questions]

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);

---------------JOINS Assignment-----------------
select * from Customers

select * from Orders

select * from Products

---write an sql query to find customer names whose place an order.
select * from Customers where CustomerID in (select distinct CustomerID from Orders)

--find list of customer who do not place any order
 
--list all order with product and price
select o.OrderID,
        o.OrderDate,
        p.ProductName,
        p.Price
from Orders as o 
inner join Products as p 
on o.ProductID=p.ProductID

--find names of customer with their orders, including customer who haven't place order
select *
from Customers as c 
left join Orders as o on c.CustomerID=o.CustomerID 

--Retrieve list of product that has never been order
select * from Products p 
left join Orders o 
on p.ProductID=o.ProductID 
where o.OrderID is null

--Find total number of order placed by each customer
select c.CustomerName, COUNT(o.OrderID) [Total Order]
from Customers as c left join Orders o on c.CustomerID=o.CustomerID
group by c.CustomerName

--display the customer, the product they have ordered, and the order date. include customers whos haven't place any orders. 

select 
    c.CustomerID,
    c.CustomerName,
    c.Country,
    o.OrderDate,
    p.ProductName
from Customers as c 
left join Orders as o 
on c.CustomerID=o.CustomerID 
left join Products as p 
on p.ProductID=o.ProductID