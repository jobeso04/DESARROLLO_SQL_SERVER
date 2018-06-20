USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_MORBI]    Script Date: 01/26/2016 18:00:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_MORBI](
	[idtemp] [int] IDENTITY(1,1) NOT NULL,
	[Indicador] [varchar](20) NULL,
	[diagnostico] [varchar](100) NULL,
	[sexo] [varchar](1) NULL,
	[total] [int] NULL,
	[n07d] [int] NULL,
	[n8d28d] [int] NULL,
	[n29d11m] [int] NULL,
	[n1a4a] [int] NULL,
	[n5a11a] [int] NULL,
	[a1214a] [int] NULL,
	[a1517a] [int] NULL,
	[j1829a] [int] NULL,
	[ad30a49a] [int] NULL,
	[ad50a59a] [int] NULL,
	[ad60a] [int] NULL,
	[fecharegistro] [datetime] NULL,
 CONSTRAINT [PK_TMP_MORBI] PRIMARY KEY CLUSTERED 
(
	[idtemp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


