alter PROCEDURE ClientSearch 
	@Name varchar(255)
AS
BEGIN
	
	declare @fname varchar(255) = @name
	declare @lname varchar(255)

	IF PATINDEX('%,%',@Name) > 0
    BEGIN
        SET @fname = SUBSTRING(@Name, 0, PATINDEX('%,%',@name))

        SET @lname = SUBSTRING(@Name, LEN(@fname + ',') + 1, LEN(@name))
    END
	else
	begin
		IF PATINDEX('% %',@Name) > 0
			BEGIN
				SET @fname = SUBSTRING(@Name, 0, PATINDEX('% %',@name))

				SET @lname = SUBSTRING(@Name, LEN(@fname + ' ') + 2, LEN(@name))
			END
	end

	print @fname
	print @lname

	

	select 
	Id,
	Name, Code, IsDeleted
	 from Flow.Client 
	 
	 where 
	 
	 (name like '%'+@fname+'%' AND name like '%'+@lname+'%')  
	 AND IsDeleted >= 0
	 order by Name
END
GO
