USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[EPIDEMIOLOGIACIEX]    Script Date: 10/19/2017 16:39:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EPIDEMIOLOGIACIEX](
	[idciex] [int] IDENTITY(1,1) NOT NULL,
	[ciex10] [varchar](50) NULL,
	[tipo_reporte] [int] NULL,
	[reporte] [varchar](250) NULL,
	[fecharegistro] [datetime] NULL,
 CONSTRAINT [PK_EPIDEMIOLOGIACIEX] PRIMARY KEY CLUSTERED 
(
	[idciex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

