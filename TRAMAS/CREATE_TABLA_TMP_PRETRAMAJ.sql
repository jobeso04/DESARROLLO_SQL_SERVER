USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMP_PRETRAMAJ]    Script Date: 10/22/2015 11:32:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_PRETRAMAJ](
	[idprej] [int] IDENTITY(1,1) NOT NULL,
	[lidacti] [int] NULL,
	[lcod] [nvarchar](6) NULL,
	[ltur] [varchar](2) NULL,
	[lnhoras] [numeric](10, 2) NULL,
	[labreacti] [varchar](10) NULL,
	[lcolegio] [varchar](10) NULL,
	[labremed] [varchar](10) NULL,
	[lnommed] [nvarchar](200) NULL,
	[fecharegistro] [datetime] NOT NULL,
	[usuario] [varchar](50) NULL,
 CONSTRAINT [PK_TMP_PRETRAMAJ] PRIMARY KEY CLUSTERED 
(
	[idprej] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


