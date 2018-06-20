USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_MOR_ATN]    Script Date: 09/14/2017 22:18:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_MOR_ATN](
	[sexo_paciente] [varchar](1) NULL,
	[grupo_edad] [varchar](2) NULL,
	[diagnostico_definitivo] [varchar](5) NULL,
	[total_atendidos] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


