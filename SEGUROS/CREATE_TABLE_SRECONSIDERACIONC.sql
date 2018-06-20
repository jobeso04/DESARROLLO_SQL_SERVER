USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[SRECONSIDERACIONC]    Script Date: 02/14/2017 12:02:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SRECONSIDERACIONC](
	[idrecon] [int] IDENTITY(1,1) NOT NULL,
	[fecharegistro] [datetime] NULL,
	[nombre] [varchar](150) NULL,
	[fuainicial] [varchar](50) NULL,
	[fuafinal] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[falta_imprimir] [int] NULL,
	[impresion_en_curso] [int] NULL,
 CONSTRAINT [PK_SRECONSIDERACION] PRIMARY KEY CLUSTERED 
(
	[idrecon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


