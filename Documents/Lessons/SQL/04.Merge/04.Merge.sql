SET STATISTICS IO ON

--DBCC DROPCLEANBUFFERS;
--DBCC FREEPROCCACHE WITH NO_INFOMSGS;

--with ....

merge Staging.Client  as target 
using (select 
c.Id ,
c.Code, 
C.Name as Name, 
fcs.Name as Status,
fect.Name as Type,
c.CreatedOn as CreatedOn,
c.UpdatedOn as UpdateOn
from Flow.Client c
inner join FlowExtension.Client fec on fec.Id = c.id 
inner join Flow.ClientStatus fcs on fcs.Id = c.StatusId
inner join FlowExtension.ClientType fect on fect.Id = fec.ClientTypeId
where c.CreatedOn > '2013-12-12'
) as source (Id, Code, Name, Status, Type, CreatedOn, UpdateOn)
ON (source.Id = target.Id)

WHEN MATCHED THEN 
	UPDATE SET Name = source.NAME
WHEN NOT MATCHED BY TARGET THEN
	INSERT (Id, Name, Code, status, type, Createdon, UpdateOn)
	VALUES (source.Id, source.Name, source.Code, source.status, source.type, source.Createdon, source.UpdateOn)
--WHEN NOT MATCHED by SOURCE 
--	THEN DELETE
;

select count(*) from Staging.Client
