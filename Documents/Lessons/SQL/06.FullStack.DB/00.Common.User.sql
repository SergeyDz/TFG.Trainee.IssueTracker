insert Common.[User] (Login, Name) values ('Admin', 'Admin')

declare @adminid int = SCOPE_IDENTITY()

insert Common.[User] (Login, Name, CreatedById) values ('smt', 'Smith', @adminid)
insert Common.[User] (Login, Name, CreatedById) values ('jhn', 'Johnes', @adminid)
insert Common.[User] (Login, Name, CreatedById) values ('and', 'Andrey', @adminid)
insert Common.[User] (Login, Name, CreatedById) values ('srg', 'Sergey', @adminid)
