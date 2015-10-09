select 
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
where c.CreatedOn > '2012-12-12'