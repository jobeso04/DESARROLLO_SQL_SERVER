USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMP_ANTETRAMAJ]    Script Date: 10/22/2015 11:31:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_ANTETRAMAJ](
	[IDTRAMAJ] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COLEGIO_PROFESIONAL] [varchar](50) NULL,
	[NOMBRE_MEDICO] [varchar](150) NULL,
	[COLEGIATURA] [varchar](10) NULL,
	[ABREVIATURA] [varchar](3) NULL,
	[CANTIDAD_PROFESIONAL] [int] NULL,
	[HORAS_PRO_CONSULTORIO] [int] NULL,
	[HORAS_PRO_EMERGENCIA] [int] NULL,
	[HORAS_PRO_HOSPITALIZACION] [int] NULL,
	[HORAS_PRO_ADMINISTRATIVO] [int] NULL,
	[HORA_PRO_CAPACITACION] [int] NOT NULL,
	[FECHA_REGISTRO] [datetime] NULL,
	[USUARIO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TMP_TRAMAJ] PRIMARY KEY CLUSTERED 
(
	[IDTRAMAJ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

