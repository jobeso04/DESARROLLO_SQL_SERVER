

--select convert(datetime, '02/12/2017', 103) + 
-- caso nela
declare @lnmes int = 12
declare @lnanio int = 2017
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET ESTADO = '4'  WHERE ESTADO = '2' AND 
 month(fecha) = @lnmes and year(fecha) = @lnanio AND CIEX1 <> '0' 



select convert(datetime, a.fecha_ing, 103) + b.HORA as fecha_hora, fecha_atencion,
CONVERT(VARCHAR(5), convert(time, (convert(datetime, a.fecha_ing, 103) + b.HORA  +  CAST('00:10:00' AS DATETIME)))) as hora_calculo_final,
 a.EMERGENCIA_ID, a.estado, a.ciex1, a.fecha, fecha_ing, HORA_ING, b.hora as hora_enfermera, a.HORA_SAL, fecha_salida from [SIGSALUD].[dbo].[EMERGENCIA] A
 LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  B on a.EMERGENCIA_ID = b.EMERGENCIA_ID
   where month(a.fecha) = @lnmes and year(a.fecha) = @lnanio  and B.TIPO_PROCESO = 'P06'
   and  a.CIEX1 <> '0' 
 
 
 SELECT HORA_ING, * FROM EMERGENCIA WHERE EMERGENCIA_ID IN ('17052636', '17052638')  


/*
select convert(datetime, a.fecha_ing, 103) + b.HORA as fecha_hora, fecha_atencion,
CONVERT(VARCHAR(5), convert(time, (convert(datetime, a.fecha_ing, 103) + b.HORA  +  CAST('00:10:00' AS DATETIME)))) as hora_calculo_final,
 a.EMERGENCIA_ID, a.estado, a.ciex1, a.fecha, fecha_ing, HORA_ING, b.hora as hora_enfermera, a.HORA_SAL, fecha_salida from [SIGSALUD].[dbo].[EMERGENCIA] A
 LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  B on a.EMERGENCIA_ID = b.EMERGENCIA_ID
   where month(a.fecha) = @lnmes and year(a.fecha) = @lnanio and HORA_ING is null and B.TIPO_PROCESO = 'P06'
   and  a.CIEX1 <> '0' 
   


select convert(datetime, a.fecha_ing, 103) + b.HORA as fecha_hora, fecha_atencion,
CONVERT(VARCHAR(5), convert(time, (convert(datetime, a.fecha_ing, 103) + b.HORA  +  CAST('00:10:00' AS DATETIME)))) as hora_calculo_final,
 a.EMERGENCIA_ID, a.estado, a.ciex1, a.fecha, fecha_ing, HORA_ING, b.hora as hora_enfermera, a.HORA_SAL, fecha_salida from [SIGSALUD].[dbo].[EMERGENCIA] A
 LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  B on a.EMERGENCIA_ID = b.EMERGENCIA_ID
   where month(a.fecha) = @lnmes and year(a.fecha) = @lnanio and HORA_ING is null and B.TIPO_PROCESO = 'P06'
   and  a.CIEX1 <> '0' 
   
*/


SELECT  nombres, A.FECHA, A.HORA, CONVERT(VARCHAR(10), A.FECHA, 103) AS FECH_NUEVA, FECHA_ING, HORA_ATEN, B.HORA AS HORA_ENFERMERA, HORA_ING, FECHA_SAL, HORA_SAL, FECHA_ATENCION 
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE A.EMERGENCIA_ID = '17051483'  and B.TIPO_PROCESO = 'P06'
 
 
 SELECT  A.CIEX1, A.CIEX4,  A.ESTADO, nombres, A.FECHA, A.HORA, CONVERT(VARCHAR(10), A.FECHA, 103) AS FECH_NUEVA, FECHA_ING, HORA_ATEN, B.HORA AS HORA_ENFERMERA,
  HORA_ING, FECHA_SAL, HORA_SAL, FECHA_ATENCION 
 FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] B ON  A.EMERGENCIA_ID = B.EMERGENCIA_ID
 WHERE  month(A.fecha) = 12 and YEAR(A.fecha) = 2017   and B.TIPO_PROCESO = 'P06' AND HORA_ING IS NULL AND CIEX1 <> '0' 
  ORDER BY HORA_ING 
  
 
 --B.HORA + 10 AS HORA_CAMBIAR,

/*
select EMERGENCIA_ID, estado, ciex1, fecha, HORA_ING from [SIGSALUD].[dbo].[EMERGENCIA] where month(fecha) = @lnmes and year(fecha) = @lnanio
and HORA_ING = ''
*/
/*
select HORA_ING, * from [SIGSALUD].[dbo].[EMERGENCIA] where EMERGENCIA_ID = '17052658'
*/

/*
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CIEX1 = UPPER(RTRIM(CIEX1)) + '.9',  ESTADO = '4'  where month(fecha) = @lnmes and year(fecha) = @lnanio  and LEN(ciex1) = 3
AND SUBSTRING(CIEX1,1,2) = 'J0' AND CIEX1 <> 'J00' 
*/