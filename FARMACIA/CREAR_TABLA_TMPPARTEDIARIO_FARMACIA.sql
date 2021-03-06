USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMPPARTEDIARIO]    Script Date: 30/07/2016 10:00:29 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPPARTEDIARIO](
	[IDTMPPARTE] [int] IDENTITY(1,1) NOT NULL,
	[ITEM] [varchar](50) NULL,
	[SALDO_ANTIGUO] [int] NULL,
	[NOMBRE] [varchar](150) NULL,
	[PRECIO] [numeric](18, 2) NULL,
	[SALIDAS_CONTADO] [numeric](18, 2) NULL,
	[SALIDAS_EXONERADO] [numeric](18, 2) NULL,
	[SALIDAS_CREDITO_PACIENTE] [numeric](18, 2) NULL,
	[SALIDAS_SIS] [numeric](18, 2) NULL,
	[SALIDAS_SISALUD] [numeric](18, 2) NULL,
	[SALIDAS_SOAT] [numeric](18, 2) NULL,
	[SALIDAS_CONSPERU] [numeric](18, 2) NULL,
	[SALIDAS_SANITARIA] [numeric](18, 2) NULL,
	[SALIDAS_BTB] [numeric](18, 2) NULL,
	[SALIDAS_PRG] [numeric](18, 2) NULL,
	[SALIDAS_DONA] [numeric](18, 2) NULL,
	[INGRESO_TRANSFIERE] [numeric](18, 2) NULL,
	[INGRESO_DEVOLUCION] [numeric](18, 2) NULL,
	[INGRESO_ANULA] [numeric](18, 2) NULL,
	[SALDO] [int] NULL,
	[CLASE] [varchar](50) NULL,
	[NOMBRE_CLASE] [varchar](150) NULL,
	[CANJE] [numeric](18, 2) NULL,
	[SISMED] [varchar](10) NULL,
	[SALIDAS_DEFENSA_NACIONAL] [numeric](18, 2) NULL,
 CONSTRAINT [PK_TMPPARTEDIARIO] PRIMARY KEY CLUSTERED 
(
	[IDTMPPARTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


