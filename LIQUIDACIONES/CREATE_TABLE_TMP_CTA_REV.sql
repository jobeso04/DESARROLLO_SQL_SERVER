USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_CTA_REV]    Script Date: 11/18/2016 09:46:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_CTA_REV](
	[cuentaid] [char](7) NOT NULL,
	[estado] [char](1) NOT NULL,
	[importe] [numeric](12, 4) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


