USE [SIGSALUD]
GO

/***** Object:  Table [dbo].[TMPRANKINGENFERMERA]    Script Date: 09/24/2015 16:56:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPRANKINGENFERMERA](
	[idranking] [int] IDENTITY(1,1) NOT NULL,
	[fecha_registro] [datetime] NULL,
	[profesional] [varchar](3) NULL,
	[nombre] [varchar](250) NULL,
	[codigoprocedimiento] [varchar](50) NULL,
	[nombreprocedimiento] [varchar](250) NULL,
	[cantidad] [int] NULL,
	[fechausuario] [datetime] NULL,
 CONSTRAINT [PK_tmprankingenfermera] PRIMARY KEY CLUSTERED 
(
	[idranking] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


