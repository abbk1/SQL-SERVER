
select * from Sales

select * into new_table1 from Sales

select * from new_table1

-----copying sales table structur only
select top 0 * into new_table2 from Sales

select * from new_table2

---inserting sales record into new_table2: Table already exist
insert into new_table2 select * from Sales where 1=0
--drop table new_table2
------copyng certain column into new table
select ProductID, Quantity into new_table2 from sales

select * from new_table2