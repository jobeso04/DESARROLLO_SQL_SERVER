USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_EMEDLO]    Script Date: 10/22/2015 08:22:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_EMEDLO](
	[idemedlo] [int] IDENTITY(1,1) NOT NULL,
	[distrito] [varchar](150) NULL,
	[localidad] [varchar](150) NULL,
 CONSTRAINT [PK_TMP_EMEDLO] PRIMARY KEY CLUSTERED 
(
	[idemedlo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


