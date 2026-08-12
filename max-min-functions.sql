select * from Sales

select storeid, MAX(TotalAmount) [Maximum Sale], 
				MIN(TotalAmount) [Minimum Sale], 
				sum(TotalAmount) [Total Sales] 
				from Sales group by StoreID