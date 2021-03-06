/* reporte de cita otorgada con cita dada */

DECLARE @lcfecha1 datetime = convert(datetime, '2018-01-01', 101)
DECLARE @lcfecha2 datetime = convert(datetime, '2018-01-31', 101)
select CITA_ID, ESTADO, NOMBRE_CONSULTORIO, NOMBRE_MEDICO, NOMBRE, NOMBRE_SEGURO, FECHA_PROGRAMACION, FECHA_OTORGA, FECHA_CONSULTA, DATEDIFF(dd, FECHA_OTORGA, FECHA_CONSULTA) as
DIAS_DIFERENCIA_FECHA_OTORGADA, DATEDIFF(dd, FECHA_PROGRAMACION, FECHA_CONSULTA) as
DIAS_DIFERENCIA_PROGRAMACION_OTORGADA  from [SIGSALUD].[dbo].[V_CITA] where  ESTADO <> '1' AND
FECHA_CONSULTA between @lcfecha1 and @lcfecha2
 order by FECHA desc
 
 
 