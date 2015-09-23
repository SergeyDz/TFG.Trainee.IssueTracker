drop table Clients
drop table Addresses

go 

create table Addresses (
	Id int identity(100, 1) not null,
	City varchar(255) unique,
	IsActive bit not null default(1),
	PRIMARY KEY (Id)
)

create table Clients (
	Id int identity (1,1) not null,
	Name varchar(255),
	AddressId int not null,
	PRIMARY KEY (Id),
	
	CONSTRAINT FK_Client_Addresses 
		FOREIGN KEY (AddressId) REFERENCES Addresses(Id)
)


