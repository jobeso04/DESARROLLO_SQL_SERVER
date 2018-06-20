USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[SEEM-V-EMERGENCIA]    Script Date: 03/07/2018 11:46:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SEEM-V-EMERGENCIA](
	[ESTADO] [char](1) NULL,
	[EMERGENCIA_ID] [char](8) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[HORA] [char](5) NULL,
	[ORDEN] [char](3) NOT NULL,
	[PACIENTE] [char](10) NULL,
	[HISTORIA] [char](20) NULL,
	[NOMBRES] [varchar](100) NULL,
	[FECHA_NACIMIENTO] [datetime] NULL,
	[SEXO] [char](1) NOT NULL,
	[NOMBRE_SEGURO] [varchar](50) NULL,
	[NOMBRE_DIAGNOSTICO] [varchar](200) NULL,
	[CONSULTORIO] [char](6) NULL,
	[NOMBRE_CONSULTORIO] [varchar](50) NULL,
	[CUENTAID] [char](7) NULL,
	[MOTIVO_EMERGENCIA] [char](2) NULL,
	[USUARIO] [char](15) NOT NULL,
	[NOMBRE_MOTIVO] [char](100) NULL,
	[MEDICO] [char](4) NOT NULL,
	[NOMBRE_MEDICO] [varchar](50) NULL,
	[DIRECCION] [varchar](60) NULL,
	[ESTADO_CIVIL] [char](2) NOT NULL,
	[NOMBRE_ESTADOCIVIL] [varchar](30) NULL,
	[DISTRITO] [char](7) NULL,
	[DOCUMENTO] [varchar](20) NULL,
	[DOCUMENTOA] [varchar](50) NULL,
	[TELEFONO1] [varchar](15) NULL,
	[TELEFONO2] [varchar](15) NULL,
	[ACOMPANANTE] [varchar](50) NULL,
	[PATERNO] [varchar](50) NULL,
	[MATERNO] [varchar](50) NULL,
	[NOMBRE_PACIENTE] [varchar](50) NULL,
	[EDAD] [char](10) NULL,
	[NOMBRE] [varchar](50) NULL,
	[NOMBRE_SEXO] [varchar](50) NULL,
	[SEGURO] [char](3) NULL,
	[PRE_AFILIACION] [char](1) NOT NULL,
	[OBSERVACION1] [varchar](200) NOT NULL,
	[OBSERVACION2] [varchar](200) NOT NULL,
	[LOCALIDAD] [char](12) NULL,
	[Nombre_Localidad] [varchar](50) NOT NULL,
	[CONSULTORIO1] [char](6) NULL,
	[CIEX4] [char](10) NULL,
	[MEDICO1] [char](4) NULL,
	[ENTIDAD] [varchar](3) NULL,
	[HORA_ATEN] [char](5) NULL,
	[ESTABLECIMIENTO] [varchar](100) NULL,
	[CONDICION_EGRESO] [char](2) NULL,
	[FECHA_ING] [nchar](10) NULL,
	[FECHA_SAL] [nchar](10) NULL,
	[NUMCAMA] [nchar](4) NULL,
	[HORA_ING] [nchar](10) NULL,
	[HORA_SAL] [nchar](10) NULL,
	[HORA_EST] [nchar](10) NULL,
	[DESTINO] [char](2) NOT NULL,
	[CIEX3] [char](10) NOT NULL,
	[CIEX2] [char](10) NOT NULL,
	[CIEX1] [char](10) NOT NULL,
	[ESTANCIA] [char](1) NULL,
	[DESEGRESO] [char](60) NOT NULL,
	[TIPOATENCION] [char](1) NULL,
	[PRIORIDAD] [varchar](11) NULL,
	[MEDICO2] [char](4) NULL,
	[CIEX5] [char](10) NULL,
	[FECHA_ING1] [nchar](10) NULL,
	[FECHA_SAL1] [nchar](10) NULL,
	[NUMCAMA1] [nchar](4) NULL,
	[HORA_ING1] [nchar](10) NULL,
	[HORA_SAL1] [nchar](10) NULL,
	[HORA_EST1] [nchar](10) NULL,
	[CIEX6] [char](10) NULL,
	[CIEX7] [char](10) NULL,
	[CIEX8] [char](10) NULL,
	[CIEX9] [char](10) NULL,
	[RELIGION] [varchar](2) NULL,
	[DESRELIGION] [varchar](50) NOT NULL,
	[QUIEN_ATIENDE] [varchar](8) NULL,
	[SEGUROLIQ] [varchar](2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


