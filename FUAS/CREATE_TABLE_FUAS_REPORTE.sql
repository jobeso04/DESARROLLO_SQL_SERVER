USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[FUAS_REPORTE]    Script Date: 01/03/2017 19:46:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FUAS_REPORTE](
	[NFUA_ERRADO] [varchar](50) NULL,
	[NFUA_OK] [varchar](50) NULL,
	[NOMBRES] [varchar](250) NULL,
	[FECHA_ATENCION] [datetime] NULL,
	[HORA_ATENCION] [char](5) NULL,
	[TIPO_PRESTACION] [char](3) NULL,
	[ORIGEN] [char](2) NULL,
	[FECHA_IMPRESION] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


