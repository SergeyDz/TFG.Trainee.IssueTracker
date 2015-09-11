declare @databasename varchar(25) = 'IssueTracker'

IF (EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE ('[' + name + ']' = @databasename OR name = @databasename)))
drop database IssueTracker

create database IssueTracker 