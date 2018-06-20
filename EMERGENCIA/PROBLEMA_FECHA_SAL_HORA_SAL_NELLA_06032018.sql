/* REVIAR PROCESO ARA EJECUCION DE NOCHE */

use SIGSALUD
/* para las fecha_sal que estan vacio */
declare @lnmes int = 2
declare @lnanio int = 2018
/* CONSULTA */
select EMERGENCIA_ID, estado, fecha, CIEX1, ciex2, ciex3, ciex4, ciex5, ciex6, prioridad, FECHA_ING, HORA_ING, HORA_sal, FECHA_sal
from  [SIGSALUD].[dbo].[EMERGENCIA] where MONTH(fecha) = @lnmes and year(fecha) = @lnanio and CIEX1 <> '0' AND fecha_ing  = ''

/* SOLUCION */
/* declare @lnmes int = 2
declare @lnanio int = 2018
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL = FECHA_ING, HORA_SAL = HORA_ING, FECHA_ING = '', HORA_ING = ''
  where MONTH(fecha) = @lnmes and year(fecha) = @lnanio and CIEX1 <> '0' AND FECHA_SAL = ''
  */
  
/**********************************/

declare @lnmes int = 2
declare @lnanio int = 2018
SELECT EMERGENCIA_ID,  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME) as FECHA_HORA_ATENCION,
CONVERT(VARCHAR(10) , fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME), 103) as FECHA_ING_NUEVA, 
CONVERT(VARCHAR(5), CONVERT(TIME, fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME))) AS HORA_NUEVA
FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 2 and YEAR(fecha) = 2018
AND FECHA_ING is null
union all 
SELECT EMERGENCIA_ID,  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME) as FECHA_HORA_ATENCION,
CONVERT(VARCHAR(10) , fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME), 103) as FECHA_ING_NUEVA, 
CONVERT(VARCHAR(5), CONVERT(TIME, fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME))) AS HORA_NUEVA
FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 2 and YEAR(fecha) = 2018
AND FECHA_ING = ''



declare @lnmes int = 2
declare @lnanio int = 2018
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL = FECHA_ING, HORA_SAL = HORA_ING, FECHA_ING = '', HORA_ING = ''
  where MONTH(fecha) = @lnmes and year(fecha) = @lnanio and CIEX1 <> '0' AND FECHA_SAL = ''
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10) , fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME), 103),
HORA_ING = CONVERT(VARCHAR(5), CONVERT(TIME, fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME)))
 WHERE  month(fecha) = 2 and YEAR(fecha) = 2018 AND FECHA_ING is null
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10) , fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME), 103),
HORA_ING = CONVERT(VARCHAR(5), CONVERT(TIME, fecha + CAST(hora as datetime) + CAST('00:10:00' AS DATETIME)))
 WHERE  month(fecha) = 2 and YEAR(fecha) = 2018 AND FECHA_ING = ''

