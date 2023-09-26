create database Book
create table Book
( Bid int primary key,
  bname varchar(35)not null,
  authorId int,
  Price numeric(12,2),
  constraint fk_authorId foreign key (authorId) references author(authorId)
 )
 create table author
 (
   authorId int primary key,
   authorName varchar(35),
   PhNo varchar(30),
   email varchar(30)unique,
   addres varchar(30),
   city varchar(30)
  )
   create table Award
   (
    awardId int primary key,
    awardTypeId int,
	authorId int,
	bId int,
	yr int,
	constraint fk_awardId foreign key(authorId)references author(authorId),
	constraint fk_BookId foreign key(BId)references Book(BId),
	constraint fk_awardtypeId foreign key(awardtypeId)references awardmaster(awardtypeId)
	)
	create table Awardmaster(
	awardTypeId int primary key,
	awardName varchar(30),
	awardPrice numeric(12,2)
	)
	drop table award
	drop table author
	drop table book
	drop table Awardmaster
	select * from award
	insert into author values(1,'Chetan Bhagat','8865342101','Chetan@143gmail.com','Bandra(west),mumbai','Mumbai')
	insert into author values(2,'Balwant gargi','8578213404','balwant@123gmail.com','Sehna,Bathinda','Barnala')
	insert into author values(4,'Gita Mehta','9965742305','gita@354gmail.com','Malad East,mumbai','Mumbai')
	insert into author values(3,'V.S.Naipaul','+44 20 7123 4567','naipaul@783gmail.com','Fernshaw road London','London')
	insert into Book values(101,'Making India awesome',1,500),(102,'One India girl',1,700),(103,'Half Girlfriend',1,540),(104,'Naked Triangle',2,800)
	insert into Awardmaster values(201,'Golden book award',4900000),(202,'society young achiever award',850000),(203,'Padmashri award',6000000),(204,'bharat ratna',3000000),(205,'Jnanpith',1100000)
	insert into Award values(301,201,1,101,2000),(302,202,1,102,2002),(303,203,4,104,1998)
	select * from award
	--find author name who got an award in 2002
	select a.authorname from author a join award d on a.authorId = d.authorId where d.yr=2002
	-- find the book got an awards 
	select bname from book b inner join award a on a.bId=b.bId
	--- Find out the authoewise book count
	select a.authorname , count(bid) from author a inner join book b on a.authorId=b.authorId group by authorname
	-- find the authorname who got only one award
	select a.authorname from author a inner join award d on a.authorId=d.authorId group by authorname having count(awardId)=1
	---Find the authorname who got golden book award
	-- find the author who got awardprice more than 50,000
	select distinct a.authorname from author a inner join award d on a.authorId=d.authorId
	inner join awardmaster m on d.awardtypeID = m.awardtypeId where m.awardPrice>50000 
	---- find author who got maximum award
	select top 1 a.authorname,count(*) as 'count of awards' from author a inner join award d on a.authorId=d.authorID group by a.authorname order by count(*) desc

	--- 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create database Movies
create table movie
(
 movieId int primary key,
 moviename varchar(20),
 releaseyear int,
 boxCollection int
 )
 create table roles(
 rollid int primary key,
 rollname varchar(20),
 )
 create table celebrity
 (
   celebrityId int primary key,
   celebrityName varchar(25),
   celebrityDOB date,
   phNo decimal,
   Celebrityemail varchar(26),
   )
   create table BollyWoodData
   (
    DataId int,
	celebrityId int,
	MovieId int,
	RollId int,
	Constraint Fk_celeId Foreign key(celebrityid)references celebrity(celebrityId),
	constraint fk_MovieId foreign key(MovieId)references Movie(MovieId),
	constraint fk_rollId foreign key (rollId)references Roles(rollId)
	)

