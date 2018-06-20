use sigsalud	
declare @lmes int = 5
declare @lmes2 int = 5
declare @lanio int = 2016
declare @medico varchar(4) = 'SEM'
declare @codigomedico varchar(10) = '084357'

/*  USE BDPERSONAL 
 SELECT COUNT(codigo) as TURNOS_PROGRAMADOS  FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
  WHERE CODIGO = @codigomedico  AND ANIO = @lanio AND MES = @lmes  AND ID_ACTIVIDAD = '4'  group by CODIGO 

use SIGSALUD
select FECHA, TURNO   from ATENCIONC where MONTH(fecha) between @lmes and @lmes2 and year(fecha) = @lanio and MEDICO = @medico
 group by fecha, TURNO */

use SIGSALUD
select *   from ATENCIONC where MONTH(fecha) between @lmes and @lmes2 and year(fecha) = @lanio and MEDICO = @medico AND ID_CITA IN (
SELECT CITA_ID FROM V_CITA  WHERE MONTH(FECHA) = 5 AND YEAR(FECHA)= 2016 AND MEDICO = 'SEM' AND ESTADO = '4')



