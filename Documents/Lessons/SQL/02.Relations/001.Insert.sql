-- create client with address

insert into Addresses (City) values ('Toronto')

insert into Clients 
	(Name, AddressId) 
	values 
	('Smith', SCOPE_IDENTITY())

--update Clients set AddressId = 13 where Id = 432
--declare @AddressId int = SCOPE_IDENTITY()