USE [SIRCONTAL]
GO

/****** Object:  Table [dbo].[migv]    Script Date: 02/17/2016 09:23:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[migv](
	[idigv] [int] IDENTITY(1,1) NOT NULL,
	[nigv] [decimal](10, 3) NULL,
	[cfecreg] [datetime] NULL,
	[cusuario] [varchar](50) NULL,
 CONSTRAINT [PK_migv] PRIMARY KEY CLUSTERED 
(
	[idigv] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

