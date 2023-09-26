create table Customer
(
 coustomerId int primary key,
 city varchar(20),
 country varchar(25),
 postalcode int,
 price numeric(12,2),
 productname varchar(25),
 constraint fk_price foreign key (productname) references product(productname)
 )
 create table product
 (
  productId int,
  productname varchar(25)primary key,
  )
 select * from Customer
 drop table  customer
 insert into product values(1,'fan'),(2,'pen'),(3,'pendrive'),(4,'laptop'),(5,'bag'),(6,'mobile'),(7,'charger'),(8,'mouse'),(9,'notebook'),(10,'shoes'),(11,'Ac'),(12,'tv')
 insert into customer values(1,'oslo','London',111045,12,'fan')
 insert into customer values (2,'Dhaka','bangaladesh',1204,53,'pen')
 insert into customer values(3,'manama','bahrain',14567,23,'pendrive')
 insert into customer values(4,'baku','Azerbaijan',156734,40,'laptop')
 insert into customer values (5,'brasilia','brazil',43265,34,'bag')
 insert into customer values(6,'pune','india',145696,56,'mobile')
 insert into customer values(7,'delhi','india',13467,342,'charger')
 insert into customer values(8,'Berlin','Germany',121110,20,'mouse')
 insert into customer values(10,'nashik','India',null,10,'notebook')
 insert into customer values(11,'Norway','Europe',42135,19,'shoes')
 insert into customer values(12,'ab','India',421416,15,'Ac')
 insert into customer values(13,'abc','france',421416,18,'tv')
 update customer set postalcode=null where coustomerId=9
 insert into customer values(11,'skien','norway',1367543,6701120)
 select city from customer
 select distinct country from customer
 select *from Customer where city='london'
 select *from customer where city<>'berlin'
 select * from customer where coustomerId=23
 select * from Customer where city='Berlin' and postalcode=121110
 select * from customer where city='Berlin' or city='London'
 select * from customer where postalcode is null
 select * from customer where postalcode is not null
 delete  from customer where country='Norway'
 select * from customer order by city
 select * from customer order by city desc
 select * from customer order by country,city
 select * from customer order by country desc,city desc
 update customer set city='Osla' where city='Norway'
 --15.	Use the MIN function to select the record with the smallest value of the Price column.
 select min(price) as 'Min price' from customer
 --16.	Use an SQL function to select the record with the highest value of the Price column.
 select max(price) as ' max price' from customer
 --17.	Use the correct function to return the number of records that have the Price value set to 20
 select Count(price) as'price to 20'from customer where price=20
 --18.	Use an SQL function to calculate the average price of all products.
 select avg(price) as'avg of price' from customer 
 --19.Use an SQL function to calculate the sum of all the Price column values in the Products table
 select sum(price) as 'sum of price'from customer
 --20.	Select all records where the value of the City column starts with the letter "a".
 select * from customer where city like 'a%'
 --21.	Select all records where the value of the City column ends with the letter "a".
 select * from customer where city like'%a'
 --22.	Select all records where the value of the City column contains the letter "a".
 select * from customer where city like '%a%'
 --23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
 select * from customer where city like'a%b'
 --24.	Select all records where the value of the City column does NOT start with the letter "a".
 select * from customer where city not like 'a%'
 --25.	Select all records where the second letter of the City is an "a".
 select * from customer where city like'_a____'
 --26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".
 select * from customer where city like '[acs]%'
 --27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
 select * from customer where city like '[a-f]%'
 --28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
 select * from customer where city not like'[acf]'
 --29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
 select * from customer where country in('norway','france')
 --30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
 select * from customer where country not in('norway','france')
 --31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
 select * from customer where price between 10 and 20
 --32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
 select * from customer where price not between 10 and 20
 --33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
 select* from customer where Productname between 'Geitost' and 'Pavlova'
 -- 34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
 select postalcode as 'pno' from customer
 --35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.
 select * from customer consumers
 select consumers.price from customer consumers
 --36.	List the number of customers in each country.
 select country,count(*) from customer group by country
 --37.	List the number of customers in each country, ordered by the country with the most customers first.
 --38.	Write the correct SQL statement to create a new database called testDB
 create database testDB
 --39.	Write the correct SQL statement to delete a database named testDB
 drop database testDB
 --40.	Add a column of type DATE called Birthday in Persons table
 create table person
 ( birthday date,
    pname varchar)
 insert into person(birthday) values('2001-11-23')
 select*from person
 --41.	Delete the column Birthday from the Persons table
 alter table person drop column birthday
 