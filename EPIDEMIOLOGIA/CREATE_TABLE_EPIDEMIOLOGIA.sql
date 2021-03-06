USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[SEPIDEMI]    Script Date: 09/10/2015 15:29:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SEPIDEMI](
	[IDSEPIDEMI] [int] IDENTITY(1,1) NOT NULL,
	[CANIO] [varchar](4) NULL,
	[CNROSEMANA] [varchar](3) NULL,
	[DFECHAINICIO] [datetime] NULL,
	[DFECHAFIN] [datetime] NULL,
	[CUSUARIO] [varchar](50) NULL,
	[DFECHAREGISTRO] [datetime] NULL,
 CONSTRAINT [PK_SEPIDEMI] PRIMARY KEY CLUSTERED 
(
	[IDSEPIDEMI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


