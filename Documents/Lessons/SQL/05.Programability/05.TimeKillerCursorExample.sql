declare @clientCode varchar(255)
declare @matterCode varchar(255)
declare @clientName varchar(max)
declare @matterName varchar(max)
declare @requestId int

declare ListCursor cursor read_only for 
	select ClientName, ClientCode, MatterName, MatterCode, RequestId from FlowExtension.ArchivedList 

OPEN ListCursor

FETCH NEXT FROM ListCursor 
INTO @ClientName, @ClientCode, @MatterName, @MatterCode, @RequestId

WHILE @@FETCH_STATUS = 0
BEGIN
		
	insert into Staging.Client (Name, Code) values (@clientName, @clientCode)
	insert into Staging.Matter (Name, Code) values (@matterName, @clientName)
	insert into Staging.Request (RequestId) values (@requestId)

    FETCH NEXT FROM ListCursor 
    INTO @ClientName, @ClientCode, @MatterName, @MatterCode, @RequestId
END 
CLOSE ListCursor;
DEALLOCATE ListCursor;
