USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TEMP_PAGOTOTAL]    Script Date: 03/13/2017 17:05:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TEMP_PAGOTOTAL](
	[PAGOID] [char](8) NOT NULL,
	[fecha] [varchar](10) NULL,
	[HORA_REGISTRO] [char](8) NULL,
	[NOMBRE] [varchar](50) NULL,
	[COMPRA_O_ATENCION] [varchar](150) NULL,
	[TOTAL] [numeric](18, 2) NULL,
	[USUARIO] [char](15) NULL,
	[ID] [varchar](1) NULL,
	[HISTORIA] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


