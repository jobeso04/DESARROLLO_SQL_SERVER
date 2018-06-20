USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMP_ACTIVIDAD_POR_MEDICO]    Script Date: 11/27/2017 17:52:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_ACTIVIDAD_POR_MEDICO](
	[IDACT_MEDICO] [int] IDENTITY(1,1) NOT NULL,
	[IDACTIVIDAD] [int] NULL,
	[ACTIVIDAD] [varchar](150) NULL,
	[DIA1] [int] NULL,
	[DIA2] [int] NULL,
	[DIA3] [int] NULL,
	[DIA4] [int] NULL,
	[DIA5] [int] NULL,
	[DIA6] [int] NULL,
	[DIA7] [int] NULL,
	[DIA8] [int] NULL,
	[DIA9] [int] NULL,
	[DIA10] [int] NULL,
	[DIA11] [int] NULL,
	[DIA12] [int] NULL,
	[DIA13] [int] NULL,
	[DIA14] [int] NULL,
	[DIA15] [int] NULL,
	[DIA16] [int] NULL,
	[DIA17] [int] NULL,
	[DIA18] [int] NULL,
	[DIA19] [int] NULL,
	[DIA20] [int] NULL,
	[DIA21] [int] NULL,
	[DIA22] [int] NULL,
	[DIA23] [int] NULL,
	[DIA24] [int] NULL,
	[DIA25] [int] NULL,
	[DIA26] [int] NULL,
	[DIA27] [int] NULL,
	[DIA28] [int] NULL,
	[DIA29] [int] NULL,
	[DIA30] [int] NULL,
	[DIA31] [int] NULL,
 CONSTRAINT [PK_TMP_ANEXO1] PRIMARY KEY CLUSTERED 
(
	[IDACT_MEDICO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


