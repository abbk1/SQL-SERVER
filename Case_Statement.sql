---------CASE STATEMENT------------

---CREATING TABLE---


-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

---------PRACTICING CASE STATEMENT-------------

SELECT * FROM Products

----- Example:1 Create a new column rank and rank product based on price

SELECT *,

CASE
	WHEN Price > 500 then 'High'
	WHEN Price >=200 AND Price <=500 then 'Medium'
	ELSE 'Low'
END [Rank]

FROM Products

---Example: 2 Priority to categories sorting

SELECT * FROM Products

ORDER BY 
CASE
	WHEN Category in ('Electronics') THEN 1
	WHEN Category in ('Furniture') THEN 2
	ELSE 3
END

----------Nested Case Statement-----------

--example group product by category and price to new column as Premium or Affordable

select *,
	case
		when Category = 'Electronics' then 

		case when price>=400 then 'Premiume Electronics'
			else 'Affordable Electronics'
		end

		when Category = 'Furniture' then 
		case when Price>=250 then 'Premiume Furniture'
			else 'Affordable Furniture'
		end

		when Category = 'Accessories' then
		case when price>45 then 'Premiume Accessories'
			else 'Affordable Accessories'
		end
	end

from Products
