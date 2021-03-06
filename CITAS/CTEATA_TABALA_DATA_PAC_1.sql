USE [SIGSALUD]
GO
/****** Object:  Table [dbo].[pac_1]    Script Date: 08/21/2017 09:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pac_1](
	[ID_CITA] [char](10) NOT NULL,
	[PACIENTE] [char](10) NOT NULL,
	[HISTORIA] [char](20) NOT NULL,
	[NOMBRES] [char](90) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[HORA] [char](10) NOT NULL,
	[ORIGEN] [char](2) NULL,
	[CONSULTORIO] [char](6) NOT NULL,
	[TURNO] [char](2) NOT NULL,
	[MOTIVO] [char](2) NOT NULL,
	[ESTADO] [char](1) NOT NULL,
	[SEGURO] [char](3) NOT NULL,
	[MEDICO] [char](3) NULL,
	[FECHA_SAL] [datetime] NULL,
	[HORA_SAL] [char](10) NULL,
	[OBSERVA1] [char](100) NULL,
	[FECHA_ING] [datetime] NULL,
	[HORA_ING] [char](10) NULL,
	[OBSERVA2] [char](100) NULL,
	[NUMERO] [char](2) NULL,
	[ORDEN_GRP] [numeric](2, 0) NULL,
	[FECHA_PAGO] [datetime] NULL,
	[EST_PAC] [char](1) NULL,
	[USUARIOS] [char](15) NULL,
	[USUARIOR] [char](15) NULL,
	[TIPO_CITA] [char](1) NULL,
	[TIPO_PACIENTE] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
