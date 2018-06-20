USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMPDIFERENCIASTOCK]    Script Date: 08/26/2016 15:42:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMPDIFERENCIASTOCK](
	[operacion] [char](9) NOT NULL,
	[item] [char](10) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[stock] [numeric](18, 2) NOT NULL,
	[cantidad] [numeric](18, 2) NOT NULL,
	[saldo] [numeric](18, 2) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


