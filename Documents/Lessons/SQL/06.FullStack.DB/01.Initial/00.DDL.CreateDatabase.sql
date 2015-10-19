use master

IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Test')
begin
-- magic to disconnewct connections
alter database [Test] set single_user with rollback immediate

DROP DATABASE [Test]
end
GO

/****** Object:  Database [Test]    Script Date: 12.10.2015 10:15:39 ******/
CREATE DATABASE [Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Test.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO