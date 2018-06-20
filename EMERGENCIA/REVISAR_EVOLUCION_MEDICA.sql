/* revisar evolucioin medica */
/* se usa el SP dbo.SP_SET_EMERGENCIA_19 */
declare @emergencia_id varchar(13) = '16022970'
/* select 	ESTADO_PACIENTE, id_emergencia_ubicacion from EMERGENCIA WHERE EMERGENCIA_ID = @emergencia_id; */
/* UPDATE EMERGENCIA SET ESTADO_PACIENTE = @lugar, id_emergencia_ubicacion = @p_id_emergencia_evolucion WHERE EMERGENCIA_ID = @emergencia_id; */
/* delete from  EMERGENCIA_DET_WEB  where id_eme_det_web >= '16042510' */
/* SELECT ID_EME_DET_WEB, PROFESIONAL, FECHA, HORA, FECHA_HORA_REG, EMERGENCIA_ID,	DETALLE, LUGAR,	TIPO_PROCESO, ESTADO, PACIENTE, factor1, factor2, factor3
  FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = @emergencia_id; */
/* select * from V_EMERGENCIA_DET_WEB where estado=1 and EMERGENCIA_ID = @emergencia_id  order by FECHA_HORA_REG asc */
/* EXEC dbo.SP_GET_EMERGENCIA_DET_WEB_10 @emergencia_id  */

/* para la hoja de emergencia */
/* EXEC SP_GET_EMERGENCIA_15 @emergencia_id  */

EXEC SP_GET_EMERGENCIA_DETALLE_PROCEDIMIENTO_2 @emergencia_id  