USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TCENARE_POST]    Script Date: 10/16/2017 18:18:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TCENARE_POST](
	[CODIGO_EJE] [varchar](50) NULL,
	[CODIGO_PRE] [varchar](50) NULL,
	[ITEM] [varchar](13) NULL,
	[NOMBRE] [varchar](250) NULL,
	[CODIGO_MED] [varchar](10) NULL,
	[PRECIO] [numeric](18, 2) NULL,
	[STOCK_FIN] [numeric](18, 0) NULL,
	[STOCK_FIN1] [numeric](18, 0) NULL,
	[FECHA_VENCIMIENTO] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


