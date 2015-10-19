create table [Common].[Roles] 
(
	Id int identity(1,1) not null primary key,
	Name nvarchar(255) not null,
	Code nvarchar(6) not null unique,

	-- IAuditable 
	CreatedOn datetime2 not null default GETUTCDATE(),
	CreatedById int null,
	UpdatedOn datetime2 null,
	UpdatedById int null
)
go

alter table Common.[Roles] 
	add constraint FK_Roles_CreatedById foreign key (CreatedById )
	references [Common].[User] (Id)
go

alter table Common.[Roles] 
	add constraint FK_Roles_UpdatedById foreign key (UpdatedById)
	references [Common].[User] (Id)