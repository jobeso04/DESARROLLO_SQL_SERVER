USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TM_RESUL_CAJA]    Script Date: 09/11/2017 15:03:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TM_RESUL_CAJA](
	[fecha] [varchar](10) NULL,
	[desde] [varchar](12) NULL,
	[hasta] [varchar](12) NULL,
	[monto] [numeric](18, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


