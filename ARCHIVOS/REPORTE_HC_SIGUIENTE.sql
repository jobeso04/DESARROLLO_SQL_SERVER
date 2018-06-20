/* Para las Citas Adelantadas */
declare @lcfechainicial datetime = convert(datetime, '2015-10-29', 101)
declare @lcfechafinal datetime = convert(datetime, '2015-10-29', 101)
declare @lcestado varchar(1) = '2'

SELECT ESTADO, NUMERO, ID_CITA, FECHA_PAGO, HORA, TURNO, PACIENTE, HISTORIA, NOMBRES, NOMBRE_CONSULTORIO, NOMBRE_MEDICO,
 NOMBRE_SEGURO, FECHA_SALIDA, HORA_SALIDA, FECHA_RETORNO, HORA_RETORNO, NOMBRE, ORDEN_GRP FROM V_ARCHIVOMOV where FECHA between @lcfechainicial AND @lcfechafinal and ESTADO = '1'
  ORDER BY TURNO ASC
 
 SELECT ESTADO, NUMERO, ID_CITA, FECHA_PAGO, HORA, TURNO, PACIENTE, HISTORIA, NOMBRES, NOMBRE_CONSULTORIO, NOMBRE_MEDICO,
 NOMBRE_SEGURO, FECHA_SALIDA, HORA_SALIDA, FECHA_RETORNO, HORA_RETORNO, NOMBRE, ORDEN_GRP FROM V_ARCHIVOMOV where FECHA between @lcfechainicial AND @lcfechafinal and ESTADO = @lcestado
 ORDER BY TURNO ASC
 
 SELECT ESTADO, NUMERO, ID_CITA, FECHA_PAGO, HORA, TURNO, PACIENTE, HISTORIA, NOMBRES, NOMBRE_CONSULTORIO, NOMBRE_MEDICO,
 NOMBRE_SEGURO, FECHA_SALIDA, HORA_SALIDA, FECHA_RETORNO, HORA_RETORNO, NOMBRE, ORDEN_GRP FROM V_ARCHIVOMOV where FECHA between @lcfechainicial AND @lcfechafinal and ESTADO = '3'
 ORDER BY TURNO ASC