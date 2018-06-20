USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[SEMEGRESO]    Script Date: 02/17/2017 11:53:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SEMEGRESO](
	[idkey] [int] IDENTITY(1,1) NOT NULL,
	[hospitalizacion_id] [varchar](10) NULL,
	[renipress] [varchar](10) NULL,
	[e_ubig] [varchar](6) NULL,
	[e_cdpto] [varchar](2) NULL,
	[e_cprov] [varchar](2) NULL,
	[e_cdist] [varchar](2) NULL,
	[cod_disa] [varchar](2) NULL,
	[cod_red] [varchar](2) NULL,
	[cod_mred] [varchar](2) NULL,
	[numhc] [varchar](15) NULL,
	[nomb] [varchar](50) NULL,
	[apell] [varchar](50) NULL,
	[doc_iden] [varchar](11) NULL,
	[etnia] [varchar](2) NULL,
	[sexo] [varchar](1) NULL,
	[edad] [int] NULL,
	[tipoedad] [varchar](1) NULL,
	[ubigeo] [varchar](6) NULL,
	[cdpto] [varchar](2) NULL,
	[cprov] [varchar](2) NULL,
	[cdist] [varchar](2) NULL,
	[fecing] [varchar](50) NULL,
	[fecegr] [varchar](50) NULL,
	[totalest] [int] NULL,
	[ups] [varchar](6) NULL,
	[condicion] [varchar](1) NULL,
	[financia] [varchar](2) NULL,
	[coddiag1] [varchar](5) NULL,
	[coddiag2] [varchar](5) NULL,
	[coddiag3] [varchar](5) NULL,
	[coddiag4] [varchar](5) NULL,
	[cemorb1] [varchar](5) NULL,
	[cemorb2] [varchar](5) NULL,
	[codcpt1] [varchar](5) NULL,
	[codcpt2] [varchar](5) NULL,
	[codcpt3] [varchar](5) NULL,
	[codcpt4] [varchar](5) NULL,
	[estadio] [varchar](1) NULL,
	[valor_t] [varchar](3) NULL,
	[valor_n] [varchar](3) NULL,
	[valor_m] [varchar](3) NULL,
	[tratamien] [varchar](3) NULL,
	[prof_parto] [varchar](3) NULL,
	[fecparto] [varchar](50) NULL,
	[rnvivo] [int] NULL,
	[rnmuerto] [int] NULL,
	[codpsal] [varchar](11) NULL,
	[fechareg] [datetime] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_SEMEGRESO] PRIMARY KEY CLUSTERED 
(
	[idkey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


