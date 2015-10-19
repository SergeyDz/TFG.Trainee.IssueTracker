DECLARE @admin int = (SELECT TOP (1) Id FROM Common.[User] WHERE [Login] = 'Admin')

DECLARE @client int 
DECLARE @matter int 

DELETE [Request].[Request]
DELETE [Request].[Client]

DELETE [Request].[Matter]

INSERT INTO [Request].[Client]  ([Name]  ,[Code]  ,[CreatedById]) VALUES ('Coca-Cola' ,'000001' ,@admin)
set @client = SCOPE_IDENTITY()

INSERT INTO [Request].[Matter] ([Name],[Code],[CreatedById]) VALUES ('Coca-Cola vs DOW', 0001 ,@admin)
set @matter = SCOPE_IDENTITY()

INSERT INTO [Request].[Request] ([Name],[Step],[ClientId],[MatterId],[CreatedById]) VALUES ('Request name', 'Initial', @client, @matter ,@admin)
GO

