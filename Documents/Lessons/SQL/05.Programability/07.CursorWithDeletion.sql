declare @clientCode varchar(255)
declare @matterCode varchar(255)
declare @clientName varchar(max)
declare @matterName varchar(max)
declare @requestId int

declare ListCursor cursor for 
	select ClientName, ClientCode, MatterName, MatterCode, RequestId from FlowExtension.ArchivedList 

OPEN ListCursor

FETCH NEXT FROM ListCursor 
INTO @ClientName, @ClientCode, @MatterName, @MatterCode, @RequestId

WHILE @@FETCH_STATUS = 0
BEGIN
		
	-- For each cycle body
	print 'Processing request #' + convert(varchar(5), @requestId)
	IF (@requestId > 1000 and @requestId < 2000)
	Begin
		 insert into Staging.DeletedRequest (RequestId) values (@requestId)
		 update Common.DocumentInstance set IsDeleted = -1 where Id = @requestId
		 --delete from Common.DocumentInstance  where Id = @requestId
	END
	-- end for each 

    FETCH NEXT FROM ListCursor 
    INTO @ClientName, @ClientCode, @MatterName, @MatterCode, @RequestId
END 
CLOSE ListCursor;
DEALLOCATE ListCursor;
