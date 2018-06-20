USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_SIN_FIRMA]    Script Date: 03/27/2017 12:05:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_SIN_FIRMA](
	[MEDICO] [char](3) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[ABREVIATURA] [varchar](3) NOT NULL,
	[DNI] [varchar](8) NOT NULL,
	[CLAVE] [varchar](30) NULL,
	[ESPECIALIDAD] [varchar](50) NULL,
	[COLEGIO] [varchar](10) NOT NULL,
	[TIENE_FIRMA] [varchar](1) NULL,
	[TIENE_FIRMA_DESCRIPCION] [varchar](80) NULL,
	[FECHA_EXPIRACION] [datetime] NULL,
	[ASISTENCIA] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


