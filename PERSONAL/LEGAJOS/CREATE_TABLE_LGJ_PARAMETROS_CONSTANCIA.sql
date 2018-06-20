USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[LGJ_PARAMETROS_CONSTANCIA]    Script Date: 04/16/2018 12:32:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LGJ_PARAMETROS_CONSTANCIA](
	[idconstancia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
	[fecharegistro] [datetime] NULL,
	[usuario] [varchar](50) NULL,
 CONSTRAINT [PK_LGJ_PARAMETROS_CONSTANCIA] PRIMARY KEY CLUSTERED 
(
	[idconstancia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

