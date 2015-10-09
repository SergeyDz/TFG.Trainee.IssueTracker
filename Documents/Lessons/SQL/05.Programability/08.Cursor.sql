
declare @requestId int

declare ListCursor cursor for 
	select RequestId from Staging.DeletedRequest 
	

OPEN ListCursor

FETCH NEXT FROM ListCursor 
INTO  @RequestId

WHILE @@FETCH_STATUS = 0
BEGIN
		
	-- For each cycle body
	print 'Processing request #' + convert(varchar(5), @requestId)
	IF (@requestId > 1000 and @requestId < 2000)
	Begin
		
		 update Common.DocumentInstance set IsDeleted = 0 where Id = @requestId
		 delete Staging.DeletedRequest where RequestId = @requestId
	END
	-- end for each 

    FETCH NEXT FROM ListCursor 
    INTO  @RequestId
END 
CLOSE ListCursor;
DEALLOCATE ListCursor;
