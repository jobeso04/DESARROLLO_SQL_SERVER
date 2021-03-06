USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_REPORTE_TOTAL]    Script Date: 07/14/2017 16:40:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_REPORTE_TOTAL](
	[PAGOID] [char](8) NOT NULL,
	[FECHA_DE_PAGO] [varchar](10) NULL,
	[HORA_DE_PAGO] [varchar](5) NULL,
	[HISTORIA] [char](20) NULL,
	[NOMBRES] [char](90) NULL,
	[CONCEPTO_DE_PAGO] [varchar](1) NULL,
	[UPS] [varchar](1) NULL,
	[CANTIDAD] [numeric](18, 2) NULL,
	[PRECIO] [numeric](18, 2) NULL,
	[IMPORTE] [numeric](18, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


