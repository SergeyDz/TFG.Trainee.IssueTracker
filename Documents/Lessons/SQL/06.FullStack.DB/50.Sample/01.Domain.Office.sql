delete from domain.office
declare @adminid int = (select top 1 Id from [common].[user] where Login = 'Admin')
insert [Domain].[Office] (code, name, CreatedById) values ('lon','London', @adminid)
insert [Domain].[Office] (code, name, CreatedById) values ('Ky','Kyiv', @adminid)
insert [Domain].[Office] (code, name, CreatedById) values ('Bey','Beyjin', @adminid)
insert [Domain].[Office] (code, name, CreatedById) values ('Iv','Ivanovo', @adminid)
insert [Domain].[Office] (code, name, CreatedById) values ('PA','Palo Alto', @adminid)



