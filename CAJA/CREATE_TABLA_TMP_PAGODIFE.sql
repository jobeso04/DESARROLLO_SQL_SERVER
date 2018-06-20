USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_PAGODIFE]    Script Date: 06/02/2016 10:53:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_PAGODIFE](
	[pagoid] [varchar](10) NULL,
	[boleta] [varchar](50) NULL,
	[totalc] [numeric](18, 3) NULL,
	[totald] [numeric](18, 3) NULL,
	[diferencia] [numeric](18, 3) NULL,
	[estado] [varchar](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


