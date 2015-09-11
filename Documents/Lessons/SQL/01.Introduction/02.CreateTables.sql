IF OBJECT_ID (N'Clients', N'U') IS NOT NULL drop table Clients

create table Clients 
(
	Id int not null , 
	Name varchar(50) null,
	Address varchar(255) null, 
	Notes varchar(500),
	ContactName varchar(50)
)

IF OBJECT_ID (N'Matters', N'U') IS NOT NULL drop table Matters
create table Matters 
(
	Id int not null , 
	Name varchar(50) null,
	Address varchar(255) null, 
	Notes varchar(500),
	ClientId int not null
)