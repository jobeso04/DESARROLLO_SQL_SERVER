USE [RCOMVEN]
GO

/****** Object:  Table [dbo].[MPROVEEDOR]    Script Date: 02/16/2016 09:03:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MPROVEEDOR](
	[idproveedor] [int] IDENTITY(1,1) NOT NULL,
	[ctipoidentidad] [varchar](1) NULL,
	[ctipoproveedor] [varchar](1) NULL,
	[ctipodomicilio] [varchar](1) NULL,
	[cruc] [varchar](12) NULL,
	[crazonsocial] [varchar](150) NULL,
	[capellidos] [varchar](150) NULL,
	[cnombres] [varchar](150) NULL,
	[cdireccion] [varchar](150) NULL,
	[cpais] [varchar](4) NULL,
	[cestado] [varchar](1) NULL,
	[dfecharegistro] [datetime] NULL,
	[cusuario] [varchar](8) NULL,
	[dfechasistema] [datetime] NULL,
 CONSTRAINT [PK_mproveedor] PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


