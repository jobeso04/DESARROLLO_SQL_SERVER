declare @lnmes int = 12
declare @lnanio int = 2017

select convert(datetime, a.fecha_ing, 103) + b.HORA as fecha_hora, fecha_atencion,
CONVERT(VARCHAR(5), convert(time, (convert(datetime, a.fecha_ing, 103) + b.HORA  +  CAST('00:10:00' AS DATETIME)))) as hora_calculo_final,
 a.EMERGENCIA_ID, a.estado, a.ciex1, a.fecha, fecha_ing, HORA_ING, b.hora as hora_enfermera, a.HORA_SAL, fecha_salida from [SIGSALUD].[dbo].[EMERGENCIA] A
 LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  B on a.EMERGENCIA_ID = b.EMERGENCIA_ID
   where month(a.fecha) = @lnmes and year(a.fecha) = @lnanio and HORA_ING is null and B.TIPO_PROCESO = 'P06'
   and  a.CIEX1 <> '0' 
   
    SELECT HORA_ING, FECHA_ATENCION FROM EMERGENCIA WHERE EMERGENCIA_ID IN ('17052636', '17052638')  
    
    
declare @lnmes int = 12
declare @lnanio int = 2017
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET ESTADO = '4'  WHERE ESTADO = '2' AND 
 month(fecha) = @lnmes and year(fecha) = @lnanio AND CIEX1 <> '0' 
 
  
  
declare @lnmes int = 12
declare @lnanio int = 2017
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CONDICION_EGRESO = '01', destino = '12' WHERE month(fecha) = @lnmes and year(fecha) = @lnanio AND CIEX1 LIKE 'J0%' AND CONDICION_EGRESO = '0'


update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12', CONDICION_EGRESO = '01'  WHERE  month(fecha) = 12 and YEAR(fecha) = 2017
 and  DESTINO = '0' and CIEX1 <> '0' and SUBSTRING(ciex1,1,1) in ('A',  'R10', 'R11')
 

