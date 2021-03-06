USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[EPIDEMIOLOGIATREPORTES]    Script Date: 10/19/2017 17:40:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EPIDEMIOLOGIATREPORTES](
	[IDREPORTE] [int] IDENTITY(1,1) NOT NULL,
	[REPORTE] [varchar](150) NULL,
 CONSTRAINT [PK_EPIDEMIOLOGIATREPORTES] PRIMARY KEY CLUSTERED 
(
	[IDREPORTE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


