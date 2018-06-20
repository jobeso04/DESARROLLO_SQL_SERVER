/* obtener reporte de atenciones */

USE SIGSALUD
declare @lcfecha1 DATETIME = convert(datetime, '2017-01-01', 101)
declare @lcfecha2 DATETIME = convert(datetime, '2017-01-31', 101)
declare @lmedico varchar(3) = 'CMA'
SELECT ID_CITA, FECHA, HISTORIA, NOMBRES, DNI, NOMCONSULTORIO, NOMBRE_MEDICO, TURNO_CONSULTA
 FROM V_ATENCIONC WHERE MEDICO = @lmedico  AND FECHA BETWEEN @lcfecha1 AND @lcfecha2 ORDER BY FECHA ASC




