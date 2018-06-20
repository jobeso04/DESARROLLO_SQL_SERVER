USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TRAMA_CE]    Script Date: 06/21/2016 11:05:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TRAMA_CE](
	[RENIPRESS] [varchar](6) NULL,
	[TURNO] [varchar](1) NULL,
	[FECHA_ATE] [varchar](8) NULL,
	[COND_ESTABL] [varchar](1) NULL,
	[ETNIA] [varchar](2) NULL,
	[HISCLI] [varchar](10) NULL,
	[FINANCIA] [varchar](2) NULL,
	[TIPDOC] [varchar](1) NULL,
	[DOCID] [varchar](8) NULL,
	[FECNAC] [varchar](8) NULL,
	[SEXO] [varchar](1) NULL,
	[NOMBRES] [varchar](60) NULL,
	[APPATERNO] [varchar](35) NULL,
	[APMATERNO] [varchar](35) NULL,
	[DIRECCION] [varchar](80) NULL,
	[UBI_PROC] [varchar](6) NULL,
	[UPS] [varchar](6) NULL,
	[COND_SERV] [varchar](1) NULL,
	[TIPO_PS] [varchar](2) NULL,
	[TIPO_DOC_PS] [varchar](1) NULL,
	[DNI_PS] [varchar](8) NULL,
	[PS_ATIENDE] [varchar](100) NULL,
	[DIAG_1] [varchar](6) NULL,
	[TIPDIAG_1] [varchar](1) NULL,
	[AUXILIAR_1] [varchar](150) NULL,
	[DIAG_2] [varchar](6) NULL,
	[TIPDIAG_2] [varchar](1) NULL,
	[AUXILIAR_2] [varchar](150) NULL,
	[DIAG_3] [varchar](6) NULL,
	[TIPDIAG_3] [varchar](1) NULL,
	[AUXILIAR_3] [varchar](150) NULL,
	[DIAG_4] [varchar](6) NULL,
	[TIPDIAG_4] [varchar](1) NULL,
	[AUXILIAR_4] [varchar](150) NULL,
	[DIAG_5] [varchar](6) NULL,
	[TIPDIAG_5] [varchar](1) NULL,
	[AUXILIAR_5] [varchar](150) NULL,
	[DIAG_6] [varchar](6) NULL,
	[TIPDIAG_6] [varchar](1) NULL,
	[AUXILIAR_6] [varchar](150) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


