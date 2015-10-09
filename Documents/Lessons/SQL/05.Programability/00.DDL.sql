drop table Staging.Client

create table Staging.Client 
(
	Id int identity(1,1) not null primary key,
	Name varchar(max) not null,
	Code varchar(255)  null
)

drop table Staging.Matter

create table Staging.Matter 
(
	Id int identity(1,1) not null primary key,
	Name varchar(max)  null,
	Code varchar(255)  null
)

drop table Staging.Request

create table Staging.Request 
(
	Id int identity(1,1) not null primary key,
	RequestId varchar(max) not null
)

drop table Staging.DeletedRequest

create table Staging.DeletedRequest 
(
	Id int identity(1,1) not null primary key,
	RequestId varchar(max) not null
)
