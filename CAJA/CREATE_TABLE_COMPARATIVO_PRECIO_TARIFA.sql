USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[COMPARATIVO_PRECIO_TARIFA]    Script Date: 05/05/2017 11:38:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[COMPARATIVO_PRECIO_TARIFA](
	[NRO] [int] IDENTITY(1,1) NOT NULL,
	[ITEM] [varchar](50) NULL,
	[CODCPT] [varchar](50) NULL,
	[DESCRIPCION] [varchar](250) NULL,
	[PRECIOTARIFA] [numeric](18, 2) NULL,
	[PRECIOCUENTA] [numeric](18, 2) NULL,
	[CUENTAID] [varchar](50) NULL,
	[NOMBRES] [varchar](250) NULL,
	[FECHA] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


