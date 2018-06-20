USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[SEEM_EMERGENCIA_PROCESADO]    Script Date: 05/05/2018 19:20:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SEEM_EMERGENCIA_PROCESADO](
	[RENIPRESS] [nvarchar](255) NULL,
	[E_UBIG] [nvarchar](255) NULL,
	[COD_DISA] [nvarchar](255) NULL,
	[COD_RED] [nvarchar](255) NULL,
	[COD_MRED] [nvarchar](255) NULL,
	[FECATE] [datetime] NULL,
	[HORATE] [nvarchar](255) NULL,
	[NUMHC] [nvarchar](255) NULL,
	[DOC_IDEN] [nvarchar](255) NULL,
	[ETNIA] [nvarchar](255) NULL,
	[FINANCIA] [nvarchar](255) NULL,
	[SEXO] [nvarchar](255) NULL,
	[EDAD] [float] NULL,
	[TIPOEDAD] [nvarchar](255) NULL,
	[NOMB] [nvarchar](255) NULL,
	[APELL] [nvarchar](255) NULL,
	[DIRECC] [nvarchar](255) NULL,
	[UBIG_RESHA] [nvarchar](255) NULL,
	[UBIG_PROCE] [nvarchar](255) NULL,
	[ACOMPANA] [nvarchar](255) NULL,
	[ADOC_IDEN] [nvarchar](255) NULL,
	[MOTATEN] [nvarchar](255) NULL,
	[SITOCURREN] [nvarchar](255) NULL,
	[UPS] [nvarchar](255) NULL,
	[CODDIAG1] [nvarchar](255) NULL,
	[TIPDIAG1] [nvarchar](255) NULL,
	[CODDIAG2] [nvarchar](255) NULL,
	[TIPDIAG2] [nvarchar](255) NULL,
	[CODDIAG3] [nvarchar](255) NULL,
	[TIPDIAG3] [nvarchar](255) NULL,
	[CODDIAG4] [nvarchar](255) NULL,
	[TIPDIAG4] [nvarchar](255) NULL,
	[CODCPT1] [nvarchar](255) NULL,
	[CODCPT2] [nvarchar](255) NULL,
	[CODCPT3] [nvarchar](255) NULL,
	[CODCPT4] [nvarchar](255) NULL,
	[CONDICION] [nvarchar](255) NULL,
	[FECEGR] [datetime] NULL,
	[HOREGR] [nvarchar](255) NULL,
	[DESTINO] [nvarchar](255) NULL,
	[DES_EESS] [nvarchar](255) NULL,
	[DES_UPS] [nvarchar](255) NULL,
	[CODPSAL] [nvarchar](255) NULL,
	[OBSERV] [float] NULL,
	[OFECING] [nvarchar](255) NULL,
	[OHORING] [nvarchar](255) NULL,
	[OFECEGR] [nvarchar](255) NULL,
	[OHOREGR] [nvarchar](255) NULL,
	[TOTALEST] [float] NULL,
	[OCAMA] [nvarchar](255) NULL,
	[OCODPSAL] [nvarchar](255) NULL,
	[OCODDIAG1] [nvarchar](255) NULL,
	[OCODDIAG2] [nvarchar](255) NULL,
	[FECHAREG] [datetime] NULL,
	[ESTADO] [float] NULL,
	[PRIORIDAD] [nvarchar](255) NULL
) ON [PRIMARY]

GO


