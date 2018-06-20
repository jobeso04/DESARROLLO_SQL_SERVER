USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TEVDFEBTEMP10y19]    Script Date: 10/12/2015 16:12:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TEVDFEBTEMP10y19](
	[IDTEVDFEBTEMP] [int] IDENTITY(1,1) NOT NULL,
	[IDDISTRITO] [varchar](10) NULL,
	[CDISTRITO] [varchar](150) NULL,
	[IDLOCALIDAD] [varchar](10) NULL,
	[CLOCALIDAD] [varchar](150) NULL,
	[EDAD] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

