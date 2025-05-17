USE [crm4]
GO

/****** Object:  Table [dbo].[USERS_AUTHORITIES]    Script Date: 17/04/2025 02:01:14 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USERS_AUTHORITIES]') AND type in (N'U'))
DROP TABLE [dbo].[USERS_AUTHORITIES]
GO

/****** Object:  Table [dbo].[USER]    Script Date: 17/04/2025 01:56:40 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USERS]') AND type in (N'U'))
DROP TABLE [dbo].[USERS]
GO

/****** Object:  Table [dbo].[AUTHORITY]    Script Date: 17/04/2025 01:57:00 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AUTHORITY]') AND type in (N'U'))
DROP TABLE [dbo].[AUTHORITY]
GO

/****** Object:  Table [dbo].[OAUTH_ACCESS_TOKEN]    Script Date: 17/04/2025 01:57:12 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAUTH_ACCESS_TOKEN]') AND type in (N'U'))
DROP TABLE [dbo].[OAUTH_ACCESS_TOKEN]
GO

/****** Object:  Table [dbo].[OAUTH_APPROVALS]    Script Date: 17/04/2025 01:57:24 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAUTH_APPROVALS]') AND type in (N'U'))
DROP TABLE [dbo].[OAUTH_APPROVALS]
GO

/****** Object:  Table [dbo].[OAUTH_CLIENT_DETAILS]    Script Date: 17/04/2025 01:57:36 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAUTH_CLIENT_DETAILS]') AND type in (N'U'))
DROP TABLE [dbo].[OAUTH_CLIENT_DETAILS]
GO

/****** Object:  Table [dbo].[OAUTH_CLIENT_TOKEN]    Script Date: 17/04/2025 01:57:49 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAUTH_CLIENT_TOKEN]') AND type in (N'U'))
DROP TABLE [dbo].[OAUTH_CLIENT_TOKEN]
GO

/****** Object:  Table [dbo].[OAUTH_CODE]    Script Date: 17/04/2025 01:57:59 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAUTH_CODE]') AND type in (N'U'))
DROP TABLE [dbo].[OAUTH_CODE]
GO

/****** Object:  Table [dbo].[OAUTH_REFRESH_TOKEN]    Script Date: 17/04/2025 01:58:10 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OAUTH_REFRESH_TOKEN]') AND type in (N'U'))
DROP TABLE [dbo].[OAUTH_REFRESH_TOKEN]
GO



