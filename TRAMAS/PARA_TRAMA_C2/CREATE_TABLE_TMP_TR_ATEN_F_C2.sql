USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_MOR_ATN_F_C2]    Script Date: 10/13/2017 12:39:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_MOR_ATN_F_C2](
	[SEXO_PAC] [varchar](1) NOT NULL,
	[GRUPO_EDAD] [varchar](2) NULL,
	[DIAGNOSTICO_DEFINITIVO] [varchar](10) NULL,
	[TOTAL_ATENDIDOS] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


