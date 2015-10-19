declare @admin int = (select TOP 1 Id from Common.[User] where login = 'Admin')
--delete from Domain.Relation

Insert into Domain.Relation (Code, Name, CreatedById)
values ('CL','Client', '1'),
 ('MT', 'Matter', '1'),
 ('AF', 'Affiliation', '1')