/*  PARA SUBIR AL SERVIDOR */

declare @lnmes int = 12
declare @lnanio int = 2017
/*
declare @lnmes int = 12
declare @lnanio int = 2017
select FECHA, ESTADO, EMERGENCIA_ID, NOMBRES, CIEX1, CIEX2, CIEX3, CIEX4, CIEX5, CIEX6, PRIORIDAD, MEDICO, MEDICO1, MEDICO2, QUIEN_ATIENDE
from [SIGSALUD].[dbo].[EMERGENCIA] where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = @lnmes and YEAR(fecha) = @lnanio and substring(CIEX4,1,1) between 'A' AND 'T'
and substring(CIEX4,1,1) <> 'J'  order by CIEX4
*/


UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = CIEX4, ESTADO = '4', MEDICO = MEDICO1  
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = @lnmes and YEAR(fecha) = @lnanio and substring(CIEX4,1,1) between 'A' AND 'T'
and substring(CIEX4,1,1) <> 'J' 
 UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = CIEX4, ESTADO = '4', MEDICO = MEDICO1   
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX4 = 'J00'
  
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = RTRIM(CIEX4) + '.9', ESTADO = '4', MEDICO = MEDICO1   
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = @lnmes and YEAR(fecha) = @lnanio and  LEN(CIEX4) = 3
  
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = CIEX4, ESTADO = '4', MEDICO = MEDICO1   
  where  CIEX4<>'0' and CIEX1 in ('0', '') and month(fecha) = @lnmes and YEAR(fecha) = @lnanio and  LEN(CIEX4) > 3
 

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10), FECHA, 103) WHERE 
 month(fecha) = @lnmes and YEAR(fecha) = @lnanio AND FECHA_ING IN ('__/__/__  ', NULL) AND CIEX4 <> '0'
 
  UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_ING = CONVERT(VARCHAR(10), FECHA, 103) WHERE 
 month(fecha) = @lnmes and YEAR(fecha) = @lnanio AND FECHA_ING IS NULL AND  CIEX4 <> '0'
 
-- EJECUTAR EL PROGRAMA --
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL = CONVERT(VARCHAR(10), FECHA_ATENCION, 103),  HORA_SAL = HORA_ATEN FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = @lnmes and YEAR(fecha) = @lnanio
  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NOT NULL

update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME))))
WHERE  month(fecha) = @lnmes and YEAR(fecha) = @lnanio  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NULL

update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = @lnmes and YEAR(fecha) = @lnanio
and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,1) in ('A', 'J', 'R10', 'R11')

 update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = @lnmes and YEAR(fecha) = @lnanio
and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,3) in ('R10', 'R12')

  update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = @lnmes and YEAR(fecha) = @lnanio
and  DESTINO = '0' and CIEX1 <> '0' 
 


