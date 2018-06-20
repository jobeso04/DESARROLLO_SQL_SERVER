USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_TR_ATEN]    Script Date: 09/14/2017 19:53:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_TR_ATEN](
	[SEXO_PACIENTE] [varchar](1) NOT NULL,
	[GRUPO_EDAD] [varchar](2) NOT NULL,
	[ATENCION_MEDICO] [int] NOT NULL,
	[ATENCION_NO_MEDICO] [int] NOT NULL,
	[ATENDIDO_POR_MES] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


