USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[TMP_MED]    Script Date: 11/11/2015 10:00:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_MED](
	[idtmpmed] [int] IDENTITY(1,1) NOT NULL,
	[medico] [char](3) NULL,
	[nombre] [varchar](50) NULL,
	[especialidad] [char](4) NULL,
	[consultorio] [char](6) NULL,
	[nombre_consultorio] [varchar](50) NULL,
	[cuenta] [int] NULL,
 CONSTRAINT [PK_TMP_MED] PRIMARY KEY CLUSTERED 
(
	[idtmpmed] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


