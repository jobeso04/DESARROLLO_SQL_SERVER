USE SIGSALUD
GO

DECLARE @ldfecha datetime = convert(datetime, '2015-10-28', 101)

/* select ESTADO, CITA_ID, TIPO_CITA, FECHA, TURNO_CONSULTA, HORA, NUMERO, NOMBRE, HISTORIA, NOMBRE_CONSULTORIO, NOMBRE_MEDICO,
 FECHA_CONSULTA, NOMBRE_SEGURO, TURNO_CONSULTA  from v_CITA where fecha_consulta = @ldfecha and  ESTADO in ('2', '3') 
  order by v_cita.TURNO_CONSULTA, NUMERO asc */


/* select *  from v_CITA where fecha_consulta = @ldfecha and  ESTADO in ('2', '3') 
  order by v_cita.TURNO_CONSULTA, NUMERO asc */


select *  from CITA where fecha = @ldfecha 