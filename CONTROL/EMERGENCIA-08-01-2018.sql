declare @lnmes int = 12
declare @lnanio int = 2017

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = UPPER(RTRIM(CIEX1)) + '.9',  ESTADO = '4'  where month(fecha) = @lnmes and year(fecha) = @lnanio  and LEN(ciex1) = 3
AND SUBSTRING(CIEX1,1,2) = 'J0' AND CIEX1 <> 'J00' 
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = UPPER(RTRIM(CIEX1)) + '.0',  ESTADO = '4'  where month(fecha) = @lnmes and year(fecha) = @lnanio  and LEN(ciex1) = 3
AND SUBSTRING(CIEX1,1,2) = 'J0' AND CIEX1 = 'J00'
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = UPPER(RTRIM(CIEX1)) + '.8',  ESTADO = '4'  where month(fecha) = @lnmes and year(fecha) = @lnanio  and LEN(ciex1) = 3
AND SUBSTRING(CIEX1,1,2) = 'J4'
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



select FECHA, CIEX1, CIEX4 from emergencia  where month(fecha) = 12 and year(fecha) = 2017  and ciex1 LIKE 'J0%'

select FECHA, CIEX1, CIEX4 from emergencia  where month(fecha) = 12 and year(fecha) = 2017  and LEN(ciex1) = 3

select FECHA, CIEX1, RTRIM(CIEX1) + '.9' AS CIEX_FINAL from emergencia  where month(fecha) = 12 and year(fecha) = 2017  and LEN(ciex1) = 3
AND SUBSTRING(CIEX1,1,2) = 'J0'


declare @lnmes int = 12
declare @lnanio int = 2017

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




/*****************/




Reemplazar Prioridad Vacia a PRIORIDAD 4 si el CIEX1 J00, J02.9, J03.9, J04.9, J05.9, J06.9 excepto A09 y J40, J45,R10, R11 
si y solo si tiene un solo CIEX1 y no tiene dato CIEX2, CIEX3 = DATO VACIO PRIORIDAD



select FECHA, CIEX1, RTRIM(CIEX1) + '.8' AS CIEX_FINAL from emergencia  where month(fecha) = 12 and year(fecha) = 2017  and LEN(ciex1) = 3
AND SUBSTRING(CIEX1,1,2) = 'J4'



select CIEX1, PRIORIDAD,* from emergencia  where month(fecha) = 12 and year(fecha) = 2017  and LEN(ciex1) = 3
AND PRIORIDAD = '' AND CIEX1 IN ('A09', 'J02.9', 'J03.9', 'J04.9', 'J05.9')




Reemplazar Ciex4  en CIEX1 = DATO VACIO CIEX DE EGRESO
Reemplazar Medico en Medico1 = DATO VACIO MEDICO DE EGRESO
Reemplazar Fecha de ingreso vacio es igual fecha de atencion = DATO VACIO FECHA DE INGRESO
Reemplazar Hora de Ingreso vacio es igual a hora de atencion + 10 min  = DATO VACIO HORA DE INGRESO
Reemplazar Fecha de Egreso si el CIEX1 J00, J02.9, J03.9, J04.9, J05.9, J06.9 excepto A09 y J40, J45,R10, R11 si y solo si tiene un solo CIEX1 y no tiene dato CIEX2, CIEX3 = DATO VACIO FECHA DE EGRESO (FECHA DE ATENCION)
Reemplazar Hora de Egreso si el CIEX1 J00, J02.9, J03.9, J04.9, J05.9, J06.9 excepto A09 y J40, J45,R10, R11 si y solo si tiene un solo CIEX1 y no tiene dato CIEX2, CIEX3 = DATO VACIO HORA DE EGRESO (HORA DE ATENCION + 25 min)
Reemplazar Destino si el CIE1 J00, J02.9, J03.9, J04.9, J05.9, J06.9 excepto A09 y J40, J45,R10, R11 si y solo si tiene un solo CIEX1 y no tiene dato CIEX2, CIEX3 = DATO VACIO DESTINO ALTA (12)
Reemplazar Condicion el CIE1 J00, J02.9, J03.9, J04.9, J05.9, J06.9 excepto A09 y J40, J45, R10, R11 si y solo si tiene un solo CIEX1 y no tiene dato CIEX2, CIEX3 = DATO VACIO CONDICION ALTA (01)

