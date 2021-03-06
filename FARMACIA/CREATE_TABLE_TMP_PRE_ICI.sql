USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_PRE_ICI]    Script Date: 12/01/2017 12:18:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_PRE_ICI](
	[FECHA_INICIAL] [varchar](10) NULL,
	[FECHA_FINAL] [varchar](10) NULL,
	[OPERACION_INICIAL] [varchar](10) NULL,
	[OPERACION_FINAL] [varchar](10) NULL,
	[CLASE] [varchar](3) NULL,
	[NOMBRE_CLASE] [varchar](250) NULL,
	[ITEM] [varchar](10) NULL,
	[NOMBRE] [varchar](250) NULL,
	[STOCK_ALMACEN] [numeric](18, 2) NULL,
	[STOCK_FARMACIA] [numeric](18, 2) NULL,
	[STOCK_CONSULTORIOS] [numeric](18, 2) NULL,
	[STOCK_SO] [numeric](18, 2) NULL,
	[STOCK_TOTAL] [numeric](18, 2) NULL,
	[SISMED] [varchar](10) NULL,
	[PRESENTACION] [varchar](10) NULL,
	[PRECIO] [numeric](18, 2) NULL,
	[SALDO_MES_ANTERIOR] [int] NULL,
	[INGRESO_ITEM_ALMACEN] [int] NULL,
	[VENTAS_CONTADO] [int] NULL,
	[IMPORTE_VENTAS] [numeric](18, 2) NULL,
	[CREDITO_PACIENTE] [int] NULL,
	[SIS] [int] NULL,
	[DOSIS_UNITARIA] [int] NULL,
	[TOTAL_SIS] [int] NULL,
	[INTERVENCION_SANITARIA] [int] NULL,
	[SOAT] [int] NULL,
	[EXONERADO] [int] NULL,
	[TRANSFERENCIA_DEVOLUCIONES] [int] NULL,
	[TOTAL_SALIDA] [int] NULL,
	[SALDO_FINAL] [int] NULL,
	[FECHA_VENCIMIENTO] [varchar](15) NULL,
	[DFECHA_INICIO_PROCESO] [datetime] NULL,
	[DFECHA_FIN_PROCESO] [datetime] NULL,
	[USUARIO] [varchar](13) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


