USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_MOR_ATN_C2]    Script Date: 10/13/2017 12:38:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_MOR_ATN_C2](
	[sexo_paciente] [varchar](1) NULL,
	[grupo_edad] [varchar](2) NULL,
	[diagnostico_definitivo] [varchar](7) NULL,
	[total_atendidos] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


