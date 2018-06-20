USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[SEEMEMERGENCIA]    Script Date: 06/16/2016 17:11:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SEEMEMERGENCIA](
	[IDSEEMEMERGENCIA] [int] IDENTITY(1,1) NOT NULL,
	[RENIPRESS] [varchar](10) NULL,
	[E_UBIG] [varchar](6) NULL,
	[COD_DISA] [varchar](2) NULL,
	[COD_RED] [varchar](2) NULL,
	[COD_MRED] [varchar](2) NULL,
	[fecate] [varchar](8) NULL,
	[horate] [varchar](5) NULL,
	[numhc] [varchar](15) NULL,
	[doc_iden] [varchar](11) NULL,
	[etnia] [varchar](2) NULL,
	[FINANCIA] [varchar](2) NULL,
	[SEXO] [varchar](1) NULL,
	[EDAD] [numeric](3, 0) NULL,
	[tipoedad] [varchar](1) NULL,
	[NOMB] [varchar](50) NULL,
	[APELL] [varchar](50) NULL,
	[DIRECC] [varchar](100) NULL,
	[UBIG_RESHA] [varchar](6) NULL,
	[UBIG_PROCE] [varchar](6) NULL,
	[ACOMPANA] [varchar](50) NULL,
	[ADOC_IDEN] [varchar](11) NULL,
	[MOTATEN] [varchar](2) NULL,
	[SITOCURREN] [varchar](6) NULL,
	[UPS] [varchar](6) NULL,
	[CODDIAG1] [varchar](5) NULL,
	[TIPDIAG1] [varchar](1) NULL,
	[CODDIAG2] [varchar](5) NULL,
	[TIPDIAG2] [varchar](1) NULL,
	[CODDIAG3] [varchar](5) NULL,
	[TIPDIAG3] [varchar](1) NULL,
	[CODDIAG4] [varchar](5) NULL,
	[TIPDIAG4] [varchar](1) NULL,
	[codcpt1] [varchar](5) NULL,
	[codcpt2] [varchar](5) NULL,
	[codcpt3] [varchar](5) NULL,
	[codcpt4] [varchar](5) NULL,
	[CONDICION] [varchar](1) NULL,
	[FECEGR] [varchar](10) NULL,
	[HOREGR] [varchar](5) NULL,
	[DESTINO] [varchar](2) NULL,
	[DES_EESS] [varchar](10) NULL,
	[DES_UPS] [varchar](6) NULL,
	[CODPSAL] [varchar](11) NULL,
	[OBSERV] [numeric](1, 0) NULL,
	[OFECING] [varchar](10) NULL,
	[OHORING] [varchar](5) NULL,
	[OFECEGR] [varchar](10) NULL,
	[OHOREGR] [varchar](5) NULL,
	[TOTALEST] [numeric](3, 0) NULL,
	[OCAMA] [varchar](10) NULL,
	[OCODPSAL] [varchar](11) NULL,
	[OCODDIAG1] [varchar](5) NULL,
	[OCODDIAG2] [varchar](5) NULL,
	[FECHAREG] [datetime] NULL,
	[ESTADO] [numeric](1, 0) NULL,
 CONSTRAINT [PK_SEEMEMERGENCIA] PRIMARY KEY CLUSTERED 
(
	[IDSEEMEMERGENCIA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


