--delete from [Domain].[Department]
declare @adminid int = (select top 1 Id from [common].[user] where Login = 'Admin')
insert [Domain].[Department] (code, name, CreatedById) values ('Tr','Transaction', @adminid)
insert [Domain].[Department] (code, name, CreatedById) values ('Lit','Litigation', @adminid)
insert [Domain].[Department] (code, name, CreatedById) values ('Corp','Corporate', @adminid)
insert [Domain].[Department] (code, name, CreatedById) values ('Fin','Finance', @adminid)
insert [Domain].[Department] (code, name, CreatedById) values ('HR','Human Resources', @adminid)