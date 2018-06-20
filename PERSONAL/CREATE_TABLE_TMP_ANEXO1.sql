USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[TMP_ANEXO1]    Script Date: 11/16/2017 11:58:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TMP_ANEXO1](
	[idanexo1] [int] IDENTITY(1,1) NOT NULL,
	[idactividad] [varchar](3) NULL,
	[actividad] [varchar](150) NULL,
	[dia1] [int] NULL,
	[dia2] [int] NULL,
	[dia3] [int] NULL,
	[dia4] [int] NULL,
	[dia5] [int] NULL,
	[dia6] [int] NULL,
	[dia7] [int] NULL,
	[dia8] [int] NULL,
	[dia9] [int] NULL,
	[dia10] [int] NULL,
	[dia11] [int] NULL,
	[dia12] [int] NULL,
	[dia13] [int] NULL,
	[dia14] [int] NULL,
	[dia15] [int] NULL,
	[dia16] [int] NULL,
	[dia17] [int] NULL,
	[dia18] [int] NULL,
	[dia19] [int] NULL,
	[dia20] [int] NULL,
	[dia21] [int] NULL,
	[dia22] [int] NULL,
	[dia23] [int] NULL,
	[dia24] [int] NULL,
	[dia25] [int] NULL,
	[dia26] [int] NULL,
	[dia27] [int] NULL,
	[dia28] [int] NULL,
	[dia29] [int] NULL,
	[dia30] [int] NULL,
	[dia31] [int] NULL,
 CONSTRAINT [PK_TMP_ANEXO1] PRIMARY KEY CLUSTERED 
(
	[idanexo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


