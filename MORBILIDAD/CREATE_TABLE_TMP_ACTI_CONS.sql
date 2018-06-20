USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_ACTI_CONS]    Script Date: 11/18/2015 19:25:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_ACTI_CONS](
	[PERIODO] [varchar](6) NULL,
	[SEXO] [varchar](1) NULL,
	[ANIO] [varchar](4) NULL,
	[MES] [varchar](2) NULL,
	[DIA] [varchar](2) NULL,
	[FICHAFAM] [varchar](11) NULL,
	[EDAD] [varchar](3) NULL,
	[TIPOEDAD] [varchar](1) NOT NULL,
	[COD_SERVSA] [varchar](10) NULL,
	[HSERVICIO] [varchar](150) NULL,
	[CODIGO] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


