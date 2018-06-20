USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_SERVICIOS_ATENCIONES]    Script Date: 09/29/2017 15:17:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_SERVICIOS_ATENCIONES](
	[SERVICIO] [varchar](250) NULL,
	[MEDICO] [varchar](250) NULL,
	[TIPO_ATENCION] [varchar](150) NULL,
	[ATENCIONES] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

