select * from employee
select * from employee where name like's%'
select * from employee where name like'%a'
select * from employee where name like'%a%'
select * from employee where name like '[sa]%'
select * from employee where name like '%[inl]'
select * from employee where name like '[s-y]%'
select * from employee where name like 's_____'
select * from employee where name like '%[sa]'
select * from employee where name not like 's%'
select * from employee where name not like '[sa]%'
select * from employee where name not like '__s___'
select * from employee where name not like '[a-g]%'
Insert into employee(id,name) values(22,'ojas') 
select * from employee order by name
select * from employee order by name desc
select * from employee order by name,salary
select * from employee order by salary,email
select top 2 * from employee order by salary
--whwn I want to select top 2 percent by id
select top 10 percent * from employee order by id 
select top 3 with ties * from employee order by salary
-- fetch and offset
-- select employee who have 3rd heighst salary in the table
select * from employee order by salary desc 
offset 2 rows
fetch next 1 rows only
-- select emp who 3rd and 4th heighst salary in the table
select * from employee order by salary desc
offset 2 rows
fetch next 2 rows only
--select emp who have 2nd lowest salary in table
select * from employee order by salary 
offset 2 row
fetch next 1 row only
-- slect emp who have 5th heighest salary
select * from employee order by salary
offset 4 rows
fetch next 1 row only
