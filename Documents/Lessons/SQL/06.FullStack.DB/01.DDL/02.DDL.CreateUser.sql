create table [Common].[User] 
(
	Id int identity(1,1) not null primary key,
	Login nvarchar(255) not null unique,
	Name nvarchar(255) not null,

	-- IAuditable 
	CreatedOn datetime2 not null default GETUTCDATE(),
	CreatedById int null,
	UpdatedOn datetime2 null,
	UpdatedById int null, 

	IsDeleted int not null default 0
)
go

alter table Common.[User] 
	add constraint FK_User_CreatedById foreign key (CreatedById )
	references [Common].[User] (Id)
go

alter table Common.[User] 
	add constraint FK_User_UpdatedById foreign key (UpdatedById)
	references [Common].[User] (Id)