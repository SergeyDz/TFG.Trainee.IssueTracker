-- create client with address
begin transaction 
declare @x int

begin try
insert into Addresses (City) values ('Toronto'+ convert(varchar(100), NEWID()))
set @x= SCOPE_IDENTITY()

insert into Clients (Name, AddressId) values ('Jones', @x) 

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