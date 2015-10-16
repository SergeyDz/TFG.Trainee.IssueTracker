create table [Request].[Party] 
(
	Id int identity(1,1) not null primary key,
	Name nvarchar(255) not null,
	RelationId int null,
	PositionId int null,

	-- IAuditable 
	CreatedOn datetime2 not null default GETUTCDATE(),
	CreatedById int not null,
	UpdatedOn datetime2 null,
	UpdatedById int null, 

	IsDeleted int not null default 0,

	foreign key (RelationId)	references [Domain].[Relation] (Id),
	foreign key (PositionId)	references [Domain].[Position] (Id),

	foreign key (CreatedById)	references [Common].[User] (Id),
	foreign key (UpdatedById)	references [Common].[User] (Id)
)
go
