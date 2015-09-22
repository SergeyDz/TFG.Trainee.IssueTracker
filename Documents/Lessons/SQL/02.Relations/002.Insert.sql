-- create client with address
begin transaction 
declare @x int

begin try

insert into Clients (Name) values ('Jones') 
set @x= SCOPE_IDENTITY()

insert into Addresses (City, ClientId) values ('Toronto', @x)
insert into Addresses (City, ClientId) values ('London', @x)
insert into Addresses (City, ClientId) values ('Ivanovo', @x)
insert into Addresses (City, ClientId) values ('Kyiv', @x)

commit transaction
print 'commit'
end try

begin catch 
print 'rollback'
rollback transaction
end catch

--insert into Clients (Name, AddressId) values ('Smith', SCOPE_IDENTITY())

--update Clients set AddressId = 13 where Id = 432
--declare @AddressId int = SCOPE_IDENTITY()