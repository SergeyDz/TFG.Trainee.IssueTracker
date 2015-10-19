create table [Request].[Request] 
(
	Id int identity(1,1) not null primary key,
	Name nvarchar(255) not null,
	Step nvarchar(255) null,
	OfficeId int null,
	DepartmentId int null,
	ClientId int not null,
	MatterId int not null,

	-- IAuditable 
	CreatedOn datetime2 not null default GETUTCDATE(),
	CreatedById int not null,
	UpdatedOn datetime2 null,
	UpdatedById int null, 


	foreign key (OfficeId)	references [Domain].[Office] (Id),
	foreign key (DepartmentId)	references [Domain].[Department] (Id),

	foreign key (CreatedById)	references [Common].[User] (Id),
	foreign key (UpdatedById)	references [Common].[User] (Id),

	foreign key (ClientId)	references [Request].[Client] (Id),
	foreign key (MatterId)	references [Request].[Matter] (Id)
)
go
