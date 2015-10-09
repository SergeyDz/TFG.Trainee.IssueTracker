select RequestId, * from FlowExtension.ArchivedList 
where RequestId > 1000 and RequestId < 2000 and TaskUserId = 1 


select * from Staging.DeletedRequest