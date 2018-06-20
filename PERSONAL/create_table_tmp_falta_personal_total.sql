USE [BDPERSONAL]
GO

/****** Object:  Table [dbo].[tmp_falta_personal_total]    Script Date: 03/02/2017 10:00:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tmp_falta_personal_total](
	[CODIGO] [nvarchar](6) NULL,
	[CODACT] [nvarchar](4) NULL,
	[DIA] [real] NULL,
	[MES] [real] NULL,
	[AÑO] [real] NULL,
	[TIPO] [nvarchar](1) NULL,
	[HORAI] [time](0) NULL,
	[HORAS] [time](0) NULL,
	[HORAI_REG] [time](0) NULL,
	[HORAS_REG] [time](0) NULL,
	[HORA_PRG] [nvarchar](6) NULL,
	[MIN_ADIC] [nvarchar](6) NULL,
	[OBSERVACION] [nvarchar](50) NULL,
	[FALTA] [real] NULL,
	[TARDANZA] [real] NULL,
	[PERMISO] [real] NULL,
	[PRODUCTIVA] [real] NULL,
	[INDICADOR] [real] NULL,
	[SITUACION] [char](2) NULL,
	[HORAI_REG1] [time](0) NULL,
	[HORAS_REG1] [time](0) NULL,
	[IdServDepartUnid] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


