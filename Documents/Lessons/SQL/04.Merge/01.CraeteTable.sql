drop table Staging.Client


create table Staging.Client
(
	Id int primary key,
	Code varchar(6), 
	Name varchar(max), 
	Status varchar(255),
	Type varchar(255),
	CreatedOn datetime,
	UpdateOn datetime
)