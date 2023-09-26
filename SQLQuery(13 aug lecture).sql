create table emp
(
 EId int primary key,
 ename varchar(25),
 salary int,
 did int,
 Locations varchar(25),
 constraint fk_depts foreign key (did) references depts(did)
 )
 create table depts
 (
  Did int primary key,
  dname varchar(25),
  )
  insert into emp values (1,'soniya',40000,11,'solapur'),(2,'sakshi',50000,12,'sangli'),(3,'suraj',45000,11,'mumbai')
  insert into emp values (7,'girish',46000,11,'pune'),(8,'sudhir',46700,11,'pune')
  insert into depts values(11,'HR'),(12,'Testing'),(13,'sales'),(14,'marketing')
  insert into depts values(15,'developer')
  insert into emp (Eid,ename,salary,Locations) values(9,'shridhar',80000,'pune')
  insert into emp (Eid,ename) values(4,'satish'),(5,'sachin'),(6,'samiksha')
  select * from emp
  select * from depts
  select e.*,d.*
  from depts d
  inner join emp e on d.Did=e.did
  ---------------------
  select e.*,d.*
  from depts d
  left join emp e on d.Did=e.did

  select e.*,d.*
  from depts d
  right join emp e on d.Did=e.did

  select e.*,d.*
  from depts d
  full join emp e on d.Did=e.did 

  alter table emp add managerId int
  update emp set managerId=4 where eid in(1,2,3)
  update emp set managerId= 6 where eid in(5,7,8,9)
  create table size
  (
  sizeid int primary key ,
  sname varchar(20)
  )
    create table color
  (
  cid int primary key ,
  cname varchar(20)
  )
  insert into size values(1,'s'),(2,'M'),(3,'L'),(4,'XL'),(5,'XXL')
  insert into color values(1,'red'),(2,'blue'),(3,'green'),(4,'black'),(5,'white'),(6,'pink')
  select * from color cross join size
  select * from size cross join color
  --- show employee name and manager name
  select e1.ename as'employee' ,e2.ename as'manager'
  from emp e1,emp e2
  where e1.managerId=e2.EId
