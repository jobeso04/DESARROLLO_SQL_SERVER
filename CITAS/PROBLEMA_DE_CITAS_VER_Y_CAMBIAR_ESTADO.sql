/* CASO DE CAMBIOS EN ESTADO DE CITAS */
USE SIGSALUD 
GO

declare @lidcita varchar(9) =  '150125485'
declare @lfecha varchar(10) = '2015-10-21'
declare @lnombre varchar(100) = 'ALVARADO DAVILA '
DECLARE @lestado varchar(1) = '2'

SELECT * FROM CITA WHERE FECHA = CONVERT(DATETIME, @lfecha,101) AND NOMBRE LIKE '%' +  @lnombre + '%' ORDER BY FECHA DESC
SELECT * FROM CITA WHERE NOMBRE LIKE '%' +  @lnombre + '%' ORDER BY FECHA DESC
select CITA_ID, MEDICO, fecha_programacion, fecha_otorga, fecha_pago, fecha, hora, turno_consulta, nombre, ESTADO, NUMERO from cita WHERE FECHA = CONVERT(DATETIME, @lfecha,101) AND NOMBRE LIKE '%' +  @lnombre + '%' ORDER BY FECHA DESC
/* UPDATE CITA SET ESTADO = @lestado where cita_id =  @lidcita */
select CITA_ID, MEDICO, fecha_programacion, fecha_otorga, fecha_pago, fecha, hora, turno_consulta, nombre, ESTADO, NUMERO from cita WHERE FECHA = CONVERT(DATETIME, @lfecha,101) AND NOMBRE LIKE '%' +  @lnombre + '%' ORDER BY FECHA DESC

/* para pacientes que postergaron su cita */

/* UPDATE CITA SET fecha_pago = '19000101'  where cita_id = '150092878'  */

 SELECT * FROM PAGOC WHERE NUMERO ='001-1539610'