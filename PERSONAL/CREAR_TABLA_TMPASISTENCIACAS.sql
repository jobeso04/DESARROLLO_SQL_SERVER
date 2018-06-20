USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMPASISTENCIACAS]    Script Date: 08/12/2015 11:19:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPASISTENCIACAS](
	[IDTMP] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](50) NULL,
	[CODACT] [varchar](50) NULL,
	[DIA] [nvarchar](2) NULL,
	[MES] [varchar](50) NULL,
	[ANIO] [nvarchar](4) NULL,
	[TIPO] [varchar](3) NULL,
	[HORAI] [time](0) NULL,
	[HORAMARCO] [time](0) NULL,
	[DIFEHORA] [numeric](18, 3) NULL,
	[HORAS] [time](0) NULL,
	[HORAMARCOS] [time](0) NULL,
	[DIFESALIDA] [numeric](18, 3) NULL,
	[FALTA] [varchar](2) NULL,
	[TARDANZA] [varchar](2) NULL,
	[PERMISO] [real] NULL,
	[DNI_RELOG] [nvarchar](10) NULL,
	[MINUTOSFINAL] [numeric](18, 2) NULL,
	[MINUTOS_SALIDA_DESCONTAR] [numeric](18, 2) NULL,
	[FALTA_SALIDA] [varchar](4) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


