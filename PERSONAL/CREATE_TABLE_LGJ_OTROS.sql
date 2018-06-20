USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[LGJ_OTROS]    Script Date: 04/11/2018 12:32:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LGJ_OTROS](
	[IDOTROSMASTER] [int] IDENTITY(1,1) NOT NULL,
	[IDMASTER] [int] NULL,
	[TIPO_OTROS] [nchar](10) NULL,
	[IDDOCOTROS] [int] NULL,
	[DOCUMENTO] [varchar](150) NULL,
	[FECHADOCUMENTO] [varchar](10) NULL,
	[FECHADOCUMENTO_FINAL] [varchar](10) NULL,
	[TIEMPO_TRANSCURRIDO] [nvarchar](50) NULL,
	[NRODOCUMENTO] [varchar](50) NULL,
	[ENTIDAD] [varchar](150) NULL,
	[DESCRIPCION] [varchar](220) NULL,
	[OBSERVACION] [varchar](250) NULL,
	[FECHAREGISTRO] [datetime] NULL,
	[USUARIO] [varchar](13) NULL,
 CONSTRAINT [PK_LGJ_OTROS] PRIMARY KEY CLUSTERED 
(
	[IDOTROSMASTER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


