USE [master]
GO
CREATE DATABASE [crm3]
GO
USE [crm3]
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
CREATE TABLE [dbo].[Unit](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,	
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Image] [image] NULL,
	[CreatedBy][int] NOT NULL,
	[CreatedDate][datetime] NOT NULL,
	[UpdatedBy][int] NULL,
	[UpdatedDate][datetime] NULL
)
GO
CREATE TABLE [dbo].[publication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgencyId] [int] NULL,
	[UnitId][int],
	[CreatedBy][int] NOT NULL,
	[CreatedDate][datetime] NOT NULL,
	[UpdatedBy][int] NULL,
	[UpdatedDate][datetime] NULL
)
GO
CREATE TABLE [dbo].[customer](
	[Id] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Cellphone] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[CreationDate][datetime] NULL,
	[UpdateDate][datetime] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Customer_Publication](
	[idCustomer] [int] NOT NULL,
	[idPublication] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCustomer] ASC,
	[idPublication] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publication]    Script Date: 26/04/2025 07:59:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publication](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[agency] [varchar](255) NULL,
	[availableUnits] [int] NULL,
	[carName] [varchar](255) NULL,
	[location] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
	[price] [float] NULL,
	[image] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO