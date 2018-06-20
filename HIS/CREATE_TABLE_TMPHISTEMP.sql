USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMPHISTEMP]    Script Date: 01/16/2018 16:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPHISTEMP](
	[periodo] [char](6) NULL,
	[ubigeo] [char](6) NULL,
	[anio] [char](4) NULL,
	[mes] [varchar](2) NULL,
	[dia] [varchar](2) NULL,
	[fichafam] [varchar](20) NULL,
	[edad] [int] NULL,
	[tipoedad] [char](2) NULL,
	[sexo] [varchar](1) NULL,
	[fecha] [varchar](10) NULL,
	[COD_SERVSA] [char](6) NULL,
	[HSERVICIO] [varchar](100) NULL,
	[PROF_CITA] [varchar](100) NULL,
	[CODHIS] [nchar](11) NULL,
	[descripcion_codigo] [varchar](200) NULL,
	[CODIGO] [char](13) NULL,
	[idhis] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TMPHISTEMP] PRIMARY KEY CLUSTERED 
(
	[idhis] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


