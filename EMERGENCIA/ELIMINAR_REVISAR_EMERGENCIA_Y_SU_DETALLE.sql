use SIGSALUD
/* EN ESTADO 2 */
DECLARE @lid2 VARCHAR(13) = '16048334'
select * from EMERGENCIA where EMERGENCIA_ID = @lid2
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lid2
SELECT  * FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid2
SELECT * FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid2


/* EN ESTADO 3 */
DECLARE @lid3 VARCHAR(13) = '16047931'
select * from EMERGENCIA where EMERGENCIA_ID = @lid3
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lid3
SELECT  * FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid3
SELECT * FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid3




/* EN ESTADO 4 */
DECLARE @lid4 VARCHAR(13) = '16047932'
select * from EMERGENCIA where EMERGENCIA_ID = @lid4
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lid4
SELECT  * FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid4
SELECT * FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid4






/* EN ESTADO 5 */
DECLARE @lid5 VARCHAR(13) = '16047929'
select * from EMERGENCIA where EMERGENCIA_ID = @lid5
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lid5
SELECT  * FROM [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle = @lid5
SELECT * FROM [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid5




/* comparar */

/* estado 2 y 3 */
select * from EMERGENCIA where EMERGENCIA_ID = '16047907'
union all
select * from EMERGENCIA where EMERGENCIA_ID = '16047931'
union all
select * from EMERGENCIA where EMERGENCIA_ID = '16047932'
union all
select * from EMERGENCIA where EMERGENCIA_ID = '16047929'


/* los campos que graban son los siguientes  */ /* medicina general */
select TIPO_CIEX1, ciex1, tipo_ciex2, ciex2, TIPO_CIEX3, ciex3, TIPO_CIEX4, ciex4, TIPO_CIEX5, ciex5, TIPO_CIEX6, ciex6, DESTINO, observacion2, MEDICO, temperatura, ESTADO, tratamiento, cuentaid, medico1,
  fecha_sal, hora_sal, PRIORIDAD, medico2, fc, sat_ox, usuario_fn_vitales, examen_fisico, relato, fecha_atencion, usuario_alta_enf, fecha_hora_alta_enf, presiond, ESTADO_PACIENTE, quien_atiende, fecha_salida, observacion_egreso,
  PROCE_MED_1, PROCE_MED_2, PROCE_MED_3   from EMERGENCIA 
  
/* emergencia obstetricia */
select TIPO_CIEX1, ciex1, tipo_ciex2, ciex2, TIPO_CIEX3, ciex3, TIPO_CIEX4, ciex4, TIPO_CIEX5, ciex5, TIPO_CIEX6, ciex6, DESTINO, observacion2, MEDICO, temperatura, ESTADO, tratamiento, cuentaid, medico1,
  fecha_sal, hora_sal, PRIORIDAD, medico2, fc, sat_ox, usuario_fn_vitales, examen_fisico, relato, fecha_atencion, usuario_alta_enf, fecha_hora_alta_enf, presiond, ESTADO_PACIENTE, quien_atiende, fecha_salida, observacion_egreso,
  PROCE_MED_1, PROCE_MED_2, PROCE_MED_3, FR, GPOBS, FUROBS, FPPOBS, EGUMOBS, EGECOOBS, USUARIO_ANT_OBSTETRICIA, ALTURA_UTERINA, PRESENTACION, LCF, DILATACION, INCORPORACION, ALTURA_PRESENTACION, MEMBRANAS, USUARIO_EXAMEN_OBSTETRICO,
  PRESENTACION2, LCF2, TV, MEDICO_CODIGO_GINE, HORAINICIOATENCION from EMERGENCIA 

  
  


