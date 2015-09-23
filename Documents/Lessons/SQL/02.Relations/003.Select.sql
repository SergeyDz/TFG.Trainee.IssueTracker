-- DROP = DDL 
-- DELETE = DML

-- #1 - delete referred records
--delete Addresses

-- #2 - insert unrelated data
-- insert into Clients (Name, AddressId) values ('Jones', 102) 

-- SOLUTIONS
--delete Addresses where Id = 102
--delete Clients where AddressId = 102

--delete Addresses where Id = 101
--update Clients set AddressId = 100 where AddressId = 101

-- INACTIVE 
--update Addresses set IsActive = 0 where Id = 101

select * from Clients
select * from Addresses

-- DELETE PROBLEM 
-- need to know correct deletion order
--delete Clients
--delete Addresses




