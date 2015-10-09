with request (RequestId, RequestType, RequestStatus) as (
select 
	r.Id as RequestId, 
	rt.Name as RequestType, 
	st.Name as RequestStatus
from Flow.Request r 
inner join FlowExtension.Request fer on r.Id = fer.Id
inner join Flow.RequestType rt on rt.Id = r.RequestTypeId and rt.IsDeleted >= 0
inner join Flow.RequestStatus st on st.id = r.StatusId and st.IsDeleted >= 0),
client (RequestId, ClientName, ClientStatus) as 
(
	select r.RequestId as RequestId, 
	c.Name as ClientName, 
	cst.Name as ClientStatus
	from Flow.Client c
	inner join request r on r.RequestId = c.RequestId
	inner join FlowExtension.Client fec on fec.Id = c.Id 
	inner join Flow.ClientStatus cst on cst.Id = c.StatusId
)

select r.RequestId, c.ClientName, c.ClientStatus from request r 
inner join client c on c.RequestId = r.RequestId


--insert into Staging.Request (RequestId, RequestType, RequestStatus) 
--select RequestId, RequestType, RequestStatus from request
