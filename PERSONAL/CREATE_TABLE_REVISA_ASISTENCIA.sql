USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[REVISA_ASISTENCIA]    Script Date: 01/15/2016 17:20:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[REVISA_ASISTENCIA](
	[NKEY] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO] [varchar](50) NULL,
	[NOMBRE] [varchar](350) NULL,
	[TIENE_ASISTENCIA] [varchar](350) NULL,
	[FECHA] [datetime] NULL,
	[ESTADO] [varchar](1) NULL,
	[CODHORA] [varchar](50) NULL,
 CONSTRAINT [PK_REVISA_ASISTENCIA] PRIMARY KEY CLUSTERED 
(
	[NKEY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

