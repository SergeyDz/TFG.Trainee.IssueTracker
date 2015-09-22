drop table Clients
drop table Addresses

go 

create table Clients (
	Id int identity (432,1) not null,
	Name varchar(255) unique
)

create table Addresses (
	Id int identity(103, 1) not null,
	City varchar(255) unique,
	ClientId int not null 
)
