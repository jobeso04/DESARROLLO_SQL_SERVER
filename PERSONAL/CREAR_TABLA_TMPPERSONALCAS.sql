USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMPPERSONALCAS]    Script Date: 08/12/2015 11:20:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPPERSONALCAS](
	[CODIGO] [nvarchar](6) NOT NULL,
	[NOMBRE] [nvarchar](60) NULL,
	[DNI] [nvarchar](12) NULL,
	[CARGO1] [nvarchar](150) NULL,
	[TIPO_TRABAJADOR] [varchar](1) NULL,
	[CODHORA] [nvarchar](3) NULL,
	[CODTAR] [nvarchar](5) NULL,
	[HABER] [numeric](18, 2) NULL,
	[HORAS] [real] NULL,
	[DNI_RELOG] [int] NULL,
	[COSTO_HORA] [numeric](18, 2) NULL,
	[MINUTOS_DESCONTAR] [numeric](18, 2) NULL,
	[FALTA] [numeric](18, 2) NULL,
	[HORAS_TARDE] [int] NULL,
	[MINUTOS_TARDE] [real] NULL,
	[HORAS_TARDANZA] [numeric](18, 2) NULL,
	[HORAS_SGH] [numeric](18, 2) NULL,
	[MINUTOS_ANTES_SALIDA] [numeric](18, 2) NULL,
	[PERMISO] [numeric](18, 2) NULL,
	[HORAS_SALIDA_DESCONTAR] [numeric](18, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


