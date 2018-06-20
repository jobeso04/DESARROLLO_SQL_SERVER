USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[LGJ_TMP_MASTER]    Script Date: 10/26/2016 14:21:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LGJ_TMP_MASTER](
	[IDMASTER] [int] NOT NULL,
	[APELLIDOSNOMBRES] [varchar](250) NULL,
	[FECHANACIMIENTO] [varchar](10) NULL,
	[ln_departamento] [varchar](3) NULL,
	[ln_provincia] [varchar](3) NULL,
	[ln_distrito] [varchar](3) NULL,
	[dni] [varchar](8) NULL,
	[CONDICIONLABORAL] [varchar](2) NULL,
	[REGIMENPENSIONARIO] [varchar](50) NULL,
	[TELEFONODOMICILIO] [varchar](15) NULL,
	[CELULAR] [varchar](15) NULL,
	[direccion] [varchar](250) NULL,
	[ESTADO_CIVIL] [varchar](2) NULL,
	[paterno_conyuge] [varchar](90) NULL,
	[materno_conyugue] [varchar](90) NULL,
	[nombre_conyuge] [varchar](50) NULL,
	[condicion] [varchar](50) NULL,
	[FECHA] [varchar](10) NULL,
	[RESOLUCION] [varchar](150) NULL,
	[nombre_departamento] [varchar](150) NULL,
	[nombre_provincia] [varchar](150) NULL,
	[nombre_distrito] [varchar](150) NULL,
	[descripcion_laboral] [varchar](100) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


