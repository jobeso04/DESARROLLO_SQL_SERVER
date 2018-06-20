USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[tmp_rayosx]    Script Date: 05/04/2016 16:20:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tmp_rayosx](
	[RAYOSX] [int] NOT NULL,
	[ITEM] [char](10) NOT NULL,
	[ZONA] [char](1) NOT NULL,
	[CANTIDAD] [int] NOT NULL,
	[DESCRIPCION] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


