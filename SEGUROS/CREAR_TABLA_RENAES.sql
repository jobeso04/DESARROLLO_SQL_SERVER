USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[ENTIDAD_RENAES]    Script Date: 09/08/2015 17:13:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ENTIDAD_RENAES](
	[ENTIDADSIS] [nchar](10) NULL,
	[codigoSIS] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[IdUbigeo] [float] NULL,
	[Categoria] [varchar](50) NULL,
	[Ejecutora] [float] NULL,
	[Disa] [float] NULL,
	[estado] [float] NULL,
	[clas] [nvarchar](255) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


