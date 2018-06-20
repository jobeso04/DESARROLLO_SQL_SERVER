/* GRABACION DE BIESTAR FETAL */
USE SIGSALUD
declare @fecha varchar(10) = '09/09/2017'
declare @hora varchar(10) = '09:23'
declare @paciente varchar(10)  = '2015254320'
declare @historia varchar(10) = '0229115'
declare @nombres varchar(250) = 'OBESO CAMONES JULISSA MARISOL'
declare @edad varchar(3) = '25'
declare @gestacion varchar(3) = '1'
declare @puerperio varchar(4) = '0102'
declare @fur varchar(10) = '08/05/2017'
declare @fpp varchar(10) = '12/12/2017'
declare @edad_gestacion varchar(2) = '16'
declare @edad_gestacion_eco varchar(2) = '18'
declare @altura_uterina varchar(2) = '12'
declare @leopold varchar(3) = 'SI'
declare @tiempo_ayuno varchar(50) = '12'
declare @medicacion_previa varchar(250) = 'CITOCINA'
declare @obstetra varchar(3)= 'CPE'
declare @usuario varchar(10) = '32921099'

/*
exec dbo.SP_GRABACION_BF '09/09/2017', '09:23','2015254320', '0229115','OBESO CAMONES JULISSA MARISOL','25','1','0102','08/05/2017',
'12/12/2017', '16', '18', '12', 'SI', '12', 'CITOCINA', 'CPE', '32921099'

delete from [SIGSALUD].[dbo].[BIENESTAR_FETAL] where IDBIENESTARFETAL  in (8,9)

*/
INSERT INTO [SIGSALUD].[dbo].[BIENESTAR_FETAL]([ESTADO],[FECHA],[HORA],[PACIENTE],[HISTORIA],[NOMBRES],[EDAD],[GESTACION],[PUERPERIO],[FUR],[FPP],[EDAD_GESTACION],[EDAD_GESTACION_ECO],
      [ALTURA_UTERINA],[LEOPOLD],[TIEMPO_AYUNO],[MEDICACION_PREVIA],[OBSTETRA],[FECHAREGISTRO],[USUARIO])
VALUES ('2', @fecha, @hora, @paciente, @historia, @nombres, @edad,@gestacion, @puerperio, @fur, @fpp, @edad_gestacion, @edad_gestacion_eco, @altura_uterina, @leopold, @tiempo_ayuno, @medicacion_previa,
@obstetra, GETDATE(), @usuario)

SELECT * FROM [SIGSALUD].[dbo].[BIENESTAR_FETAL]

DELETE FROM [SIGSALUD].[dbo].[BIENESTAR_FETAL] WHERE IDBIENESTARFETAL in (7,8,9,10,11)


INSERT INTO [SIGSALUD].[dbo].[BIENESTAR_FETAL]([ESTADO],[FECHA],[HORA],[PACIENTE],[HISTORIA],[NOMBRES],[EDAD],[GESTACION],[PUERPERIO],[FUR],[FPP],[EDAD_GESTACION],[EDAD_GESTACION_ECO],[ALTURA_UTERINA],[LEOPOLD],[TIEMPO_AYUNO],[MEDICACION_PREVIA],[OBSTETRA],[FECHAREGISTRO],[USUARIO])
VALUES ('3','18/09/2017','05:00','GARCIA MODRAGON ALEJANDRINA','2008047439','0047479','24','1','0102','12/08/2017','12/12/2017','21','20','14','SI','12 ','CITOCINA','CPE',getdate(),'32921099')


INSERT INTO [SIGSALUD].[dbo].[BIENESTAR_FETAL]([ESTADO],[FECHA],[HORA],[PACIENTE],[HISTORIA],[NOMBRES])
/*
,[EDAD],[GESTACION],[PUERPERIO],[FUR],[FPP],[EDAD_GESTACION],[EDAD_GESTACION_ECO],[ALTURA_UTERINA],[LEOPOLD],[TIEMPO_AYUNO],[MEDICACION_PREVIA],[OBSTETRA],[FECHAREGISTRO],[USUARIO])
*/

VALUES ('3','18/09/2017','05:00','GARCIA MODRAGON ALEJANDRINA') 
/*
,'2008047439','0047479','24','1','0102','12/08/2017','12/12/2017','21','20','14','SI','12 ','CITOCINA','CPE',getdate(),'32921099') */


INSERT INTO [SIGSALUD].[dbo].[BIENESTAR_FETAL]([ESTADO],[FECHA],[HORA],[PACIENTE],[HISTORIA],[NOMBRES],[EDAD],[GESTACION],[PUERPERIO],[FUR],[FPP],[EDAD_GESTACION],[EDAD_GESTACION_ECO],[ALTURA_UTERINA],[LEOPOLD],[TIEMPO_AYUNO],[MEDICACION_PREVIA],[OBSTETRA],[FECHAREGISTRO],[USUARIO])VALUES ('3','18/09/2017','05:00','2008047439','0047479','GARCIA MODRAGON ALEJANDRINA','24','1','0102','12/08/2017','12/12/2017','21','20','14','SI','12 HORAS','CITOCINA','CPE',getdate(),'32921099')