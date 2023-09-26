create table country
(
 cid int primary key,
 cname varchar(25)
 )
 create table states
 (
  stateid int primary key,
  statename varchar(20),
  cid int,
  constraint fk_cid foreign key (cid) references country(cid)
  )
  create table city 
  (
   cityId int primary key,
   cityname varchar(25),
   stateid int,
   constraint fk_stateId foreign key(stateId) references states(stateId)
   )
   insert into country values(1,'India'),(2,'china'),(3,'pakistan'),(4,'bangladesh')
   insert into states values (101,'Maharashtra',1),(102,'Rajtastan',1),(103,'hainan',2),(104,'Rangpur',4)
   insert into city values (201,'pune',101),(202,'Nashik',101),(203,'mumbai',101),(204,'sansha',103)
   select * from country
   select * from states
   select * from city
   ---find country whos state is maharashtra
   select c.cname from country c join states s on s.cid=c.cid where statename='maharashtra'
   ---find country id ,country name whose state is maharashtra and city is pune
   select c.cid,c.cname from country c inner join states s on c.cid=s.cid inner join city cit on cit.stateid=s.stateid where s.statename='maharashtra' and cit.cityname='pune'
   --find the state for country china
   select s.statename from states s join country c on s.cid=c.cid where c.cname='china'
   --find cities name country india
   select cit.cityname from country c inner join states s on c.cid=s.cid inner join city cit on cit.stateid=s.stateid where c.cname='India'
   --find state name whoes city name is pune
   select s.statename from states s inner join city c on s.stateid=c.stateid where cityname='pune'
   --