USE SIGSALUD
GO

select ESTADO, CITA_ID, TURNO_CONSULTA, HORA, NUMERO, NOMBRE, HISTORIA, NOMBRE_CONSULTORIO, NOMBRE_MEDICO,
 NOMBRE_SEGURO  from v_CITA where fecha_consulta = convert(datetime, '2015-10-19',101) and
  consultorio = '4041' and seguro IN ('01', '05') order by TURNO_CONSULTA, NUMERO asc