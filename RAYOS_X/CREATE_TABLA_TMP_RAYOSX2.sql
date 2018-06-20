USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_RAYOSX2]    Script Date: 05/30/2016 15:35:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_RAYOSX2](
	[ITEM] [char](10) NULL,
	[CANTIDAD] [int] NULL,
	[DESCRIPCION] [varchar](250) NULL,
	[PRECIO] [numeric](18, 3) NULL,
	[IMPORTE] [numeric](18, 3) NULL,
	[reporte] [varchar](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


