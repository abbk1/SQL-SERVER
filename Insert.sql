create database students

use students

create table student_details(
			student_id tinyint primary key,
			student_name nvarchar(255),
			gender char(1),
			event_date date,
			distance decimal(5,2)
)

select * from student_details

insert into student_details 
values (1,'Abubakar Sajo','M','2026-08-11',156.55),
		(2,'Hamida Samila','F','2025-03-11',111.55),
		(3,'Babangida Bawa','M','2026-08-11',156.55)

-------------------partial insertion--------------------

insert into student_details (student_id, gender, event_date, distance)
values (4,'M','2026-08-11',156.55)

select * from student_details

insert into student_details (student_id, event_date)
values (5,'2026-08-11')


select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

select top 0 student_id  from student_details