USE [master]
GO

CREATE DATABASE [crm3]
GO

USE [crm3]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agency]') AND type in (N'U'))
DROP TABLE [dbo].[Agency]
GO

CREATE TABLE [dbo].[Agency](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Location] [varchar](255) NULL,
	[CreatedBy][int] NOT NULL,
	[CreatedDate][datetime] NOT NULL,
	[UpdatedBy][int] NULL,
	[UpdatedDate][datetime] NULL
)
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unit]') AND type in (N'U'))
DROP TABLE [dbo].[Unit]
GO

CREATE TABLE [dbo].[Unit](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,	
	[Quantity_Units] [int] NULL,
	[Price] [float] NULL,
	[Image] [image] NULL,
	[CreatedBy][int] NOT NULL,
	[CreatedDate][datetime] NOT NULL,
	[UpdatedBy][int] NULL,
	[UpdatedDate][datetime] NULL
)
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO

CREATE TABLE [dbo].[Customer](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Cellphone] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[CreatedBy][int] NOT NULL,
	[CreatedDate][datetime] NOT NULL,
	[UpdatedBy][int] NULL,
	[UpdatedDate][datetime] NULL
)
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[publication]') AND type in (N'U'))
	DROP TABLE [dbo].[publication]
GO

CREATE TABLE [dbo].[publication](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Agency_Id] [int] NULL,
	[Unit_Id][int],
	[Available_Units] [int] NULL,
	[CreatedBy][int] NOT NULL,
	[CreatedDate][datetime] NOT NULL,
	[UpdatedBy][int] NULL,
	[UpdatedDate][datetime] NULL,
	foreign key ([Agency_Id]) references [dbo].[Agency]([id]),
	foreign key ([Unit_Id]) references [dbo].[Unit]([id])
)
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer_Publication]') AND type in (N'U'))
	DROP TABLE [dbo].[Customer_Publication]
GO

CREATE TABLE [dbo].[Customer_Publication](
	[Customer_id] [int] NOT NULL,
	[Publication_id] [int] NOT NULL,
	PRIMARY KEY ([Customer_id],[Publication_id]),
	foreign key ([Customer_id]) references [dbo].[Customer]([id]),
	foreign key ([Publication_id]) references [dbo].[Publication]([id])
)
GO
