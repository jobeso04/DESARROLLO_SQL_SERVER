USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_TR_ATEN_M]    Script Date: 09/14/2017 20:19:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_TR_ATEN_M](
	[sex] [varchar](1) NOT NULL,
	[grupo_edad] [varchar](2) NOT NULL,
	[atm] [int] NULL,
	[atnm] [int] NULL,
	[attm] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


