create table [Request].[Client] 
(
	Id int identity(1,1) not null primary key,
	Name nvarchar(255) not null,
	Code nvarchar(255) null unique,

	-- IAuditable 
	CreatedOn datetime2 not null default GETUTCDATE(),
	CreatedById int not null,
	UpdatedOn datetime2 null,
	UpdatedById int null, 

	foreign key (CreatedById)	references [Common].[User] (Id),
	foreign key (UpdatedById)	references [Common].[User] (Id)
)
go
