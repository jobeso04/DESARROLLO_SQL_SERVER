USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_DIAS_TURNO]    Script Date: 11/30/2017 12:32:51 ******/
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_DIAS_TURNO](
	[DIA] [varchar](5) NULL,
	[FECHA] [datetime] NULL,
	[TURNO] [varchar](2) NULL,
	[HORAS] [numeric](8, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


