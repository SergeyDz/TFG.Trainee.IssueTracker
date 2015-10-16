declare @adminid int = (select top 1 Id from Common.[User] where Name = 'Admin')

insert Common.[User] (Login, Name, CreatedById) values ('smt', 'Smith', @adminid)
insert Common.[User] (Login, Name, CreatedById) values ('jhn', 'Johnes', @adminid)
insert Common.[User] (Login, Name, CreatedById) values ('and', 'Andrey', @adminid)
insert Common.[User] (Login, Name, CreatedById) values ('srg', 'Sergey', @adminid)
