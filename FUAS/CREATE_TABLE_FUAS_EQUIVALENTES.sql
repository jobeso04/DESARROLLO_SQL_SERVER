USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[FUAS_EQUIVALENTES]    Script Date: 01/03/2017 18:10:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FUAS_EQUIVALENTES](
	[NUMFUA_ANTERIOR] [varchar](100) NULL,
	[NUMFUA_NUEVO] [varchar](100) NULL,
	[IDKEY] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_FUAS_EQUIVALENTES] PRIMARY KEY CLUSTERED 
(
	[IDKEY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


