USE [SIGSALUD]
GO

/****** Object:  Table [dbo].[BIENESTAR_FETAL]    Script Date: 09/19/2017 16:13:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BIENESTAR_FETAL](
	[IDBIENESTARFETAL] [int] IDENTITY(1,1) NOT NULL,
	[ESTADO] [varchar](1) NULL,
	[FECHA] [varchar](10) NULL,
	[HORA] [varchar](10) NULL,
	[PACIENTE] [varchar](10) NULL,
	[HISTORIA] [varchar](10) NULL,
	[NOMBRES] [varchar](250) NULL,
	[EDAD] [varchar](3) NULL,
	[GESTACION] [varchar](3) NULL,
	[PUERPERIO] [varchar](4) NULL,
	[FUR] [varchar](10) NULL,
	[FPP] [varchar](10) NULL,
	[EDAD_GESTACION] [varchar](2) NULL,
	[EDAD_GESTACION_ECO] [varchar](2) NULL,
	[ALTURA_UTERINA] [varchar](2) NULL,
	[LEOPOLD] [varchar](3) NULL,
	[TIEMPO_AYUNO] [varchar](50) NULL,
	[MEDICACION_PREVIA] [varchar](250) NULL,
	[OBSTETRA] [varchar](3) NULL,
	[MEDICO] [varchar](3) NULL,
	[FECHAREGISTRO] [datetime] NULL,
	[USUARIO] [varchar](20) NULL,
 CONSTRAINT [PK_BIENESTAR_FETAL] PRIMARY KEY CLUSTERED 
(
	[IDBIENESTARFETAL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SL - Situacion Longitudinal
SO - Situacion Oblicua
ST - Situacion Transversa
PC - Presentacion Cefalica
PP - Presentacin Podalica
PD - Posicion Derecha
PI - Posicion Izquierda
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIENESTAR_FETAL', @level2type=N'COLUMN',@level2name=N'LEOPOLD'
GO


