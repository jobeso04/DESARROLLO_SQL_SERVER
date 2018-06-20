USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[NIVEL_ESS]    Script Date: 09/04/2015 19:05:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[NIVEL_ESS](
	[idniveless] [int] IDENTITY(1,1) NOT NULL,
	[ccodigo] [varchar](2) NULL,
	[cdescripcion] [varchar](200) NULL,
	[cnivel] [varchar](50) NULL,
	[cabreviatura] [varchar](5) NULL,
	[cestado] [varchar](2) NULL,
	[ccodigoanterior] [varchar](20) NULL,
	[cusuario] [varchar](50) NULL,
	[dfecharegistro] [datetime] NULL,
 CONSTRAINT [PK_NIVEL_ESS] PRIMARY KEY CLUSTERED 
(
	[idniveless] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


