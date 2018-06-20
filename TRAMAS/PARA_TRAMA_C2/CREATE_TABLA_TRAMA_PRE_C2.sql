USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_TRAMA_PRE_C2]    Script Date: 11/10/2017 15:35:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_TRAMA_PRE_C2](
	[SEXO] [varchar](3) NULL,
	[GRUPO_EDAD] [varchar](2) NULL,
	[DIAGNOSTICO_EMERGENCIA] [varchar](10) NULL,
	[TOTAL_ATENDIDOS] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


