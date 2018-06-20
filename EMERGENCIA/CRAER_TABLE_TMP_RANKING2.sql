USE [SIGSALUD]
GO

/***** Object:  Table [dbo].[tmprankin2]    Script Date: 09/24/2015 16:56:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tmprankin2](
	[idran] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[profesional] [varchar](3) NULL,
	[nombreprofesional] [varchar](250) NULL,
	[nombreprocedimiento] [varchar](250) NULL,
	[cantidad] [int] NULL,
	[fecharegistro] [datetime] NULL,
 CONSTRAINT [PK_tmprankin2] PRIMARY KEY CLUSTERED 
(
	[idran] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


