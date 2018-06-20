
use SIGSALUD
/* EN ESTADO 2 */
DECLARE @lid2 VARCHAR(13) = '18004565'
select * from EMERGENCIA where EMERGENCIA_ID = @lid2
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lid2
SELECT  * FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid2
SELECT * FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid2



select ESTADO, * from EMERGENCIA where EMERGENCIA_ID = '18005011'
UNION ALL
select ESTADO,  * from EMERGENCIA where EMERGENCIA_ID = '18005010'
UNION ALL
select ESTADO,  * from EMERGENCIA where EMERGENCIA_ID = '18005007'


DECLARE @lid_emergencia VARCHAR(13) = '18004565'
delete from [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] where EMERGENCIA_ID = @lid_emergencia
DELETE FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid_emergencia
DELETE FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid_emergencia

DECLARE @lid_emergencia VARCHAR(13) = '18005001'
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET ESTADO = '2', tipo_ciex1 = '0', CIEX1 = '0', tipo_ciex2 = '0', CIEX2 = '0', tipo_ciex3 = '0', CIEX3 = '0', DESTINO = '0',
MEDICO = '0', MEDICO1 = '0', SINTOMAS = '', TEMPERATURA = 0, PRESION = 0, PULSO = 0, TRATAMIENTO = '', HORA_ATEN = '', fecha_sal = '', HORA_SAL = '', PRIORIDAD = '', FC = 0, SAT_OX = 0,
 USUARIO_FN_VITALES = '', EXAMEN_FISICO = '', RELATO = '', FECHA_ATENCION = '', TIPO_CIEX4 = '0', TIPO_CIEX5 = '0', TIPO_CIEX6 = '0', PRESIOND = 0, QUIEN_ATIENDE = '',
 CIEX4 = '0', CIEX5 = '0', CIEX6 = '0', fecha_salida = '', observacion_egreso = '', PROCE_MED_1 = '0', PROCE_MED_2 = '0', PROCE_MED_3 = '0', FR = 0 
 where  EMERGENCIA_ID = @lid_emergencia
delete from [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] where EMERGENCIA_ID =  @lid_emergencia
delete from [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle =  @lid_emergencia
delete from [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION =  @lid_emergencia



112




 WHERE EMERGENCIA_ID = @lid_emergencia




use SIGSALUD
/* EN ESTADO 2 */
DECLARE @lid2 VARCHAR(13) = '18000837'
select * from EMERGENCIA where EMERGENCIA_ID = @lid2
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lid2
SELECT  * FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid2
SELECT * FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid2
