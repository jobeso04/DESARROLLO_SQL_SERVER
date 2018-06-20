USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMPHISTORICOPERSONALCAS]    Script Date: 12/01/2017 17:30:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPHISTORICOPERSONALCAS](
	[IDTMPHSTORICO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [nvarchar](6) NULL,
	[NOMBRE] [nvarchar](60) NULL,
	[DNI] [nvarchar](12) NULL,
	[CARGO] [nvarchar](150) NULL,
	[TIPO_TRABAJADOR] [varchar](1) NULL,
	[CODHORA] [nvarchar](15) NULL,
	[CODTAR] [nvarchar](5) NULL,
	[HABER] [numeric](8, 2) NULL,
	[HORAS] [real] NULL,
	[DNI_RELOG] [int] NULL,
	[COSTO_HORA] [numeric](6, 2) NULL,
	[MINUTOS_DESCONTAR] [numeric](8, 2) NULL,
	[FALTA] [int] NULL,
	[HORAS_TARDE] [int] NULL,
	[MINUTOS_TARDE] [real] NULL,
	[HORAS_TARDANZA] [numeric](8, 2) NULL,
	[HORAS_SGH] [numeric](8, 2) NULL,
	[MINUTOS_ANTES_SALIDA] [numeric](8, 2) NULL,
	[PERMISO] [int] NULL,
	[HORAS_SALIDA_DESCONTAR] [int] NULL,
	[DESCUENTO] [numeric](8, 2) NULL,
	[MES] [nvarchar](3) NULL,
	[ANIO] [nvarchar](50) NULL,
	[CODNIVEL] [nvarchar](5) NULL,
	[CARGO1] [varchar](50) NULL,
 CONSTRAINT [PK_TMPHISTORICOPERSONALCAS] PRIMARY KEY CLUSTERED 
(
	[IDTMPHSTORICO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

