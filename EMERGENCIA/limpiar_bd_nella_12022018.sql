

declare @lnmes int = 1
declare @lnanio int = 2018
select  fecha, fecha_sal, estado
 from  [SIGSALUD].[dbo].[EMERGENCIA] where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and estado in ('4', '5') 
 order by convert(datetime, fecha_sal, 103) 
 
select 4464 - 4256

declare @lnmes int = 1
declare @lnanio int = 2018

select emergencia_id, fecha_salida, fecha_sal,
CASe when CHARINDEX('-', fecha_sal) > 0 then convert(datetime, fecha_sal, 101)
 when fecha_sal is null    then ''
when fecha_sal = '__/__/__  '    then ''
when fecha_sal = ' _/__/__  '    then ''
else fecha_sal end as nueva_fecha_sal  from  [SIGSALUD].[dbo].[EMERGENCIA] order by fecha_salida desc


where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
   


select fecha_sal  from  [SIGSALUD].[dbo].[EMERGENCIA] 
group by fecha_sal order by fecha_sal






SELECT convert(datetime, '2018-01-26', 101)
SELECT convert(datetime, '2018-01-26', 101)
SELECT convert(date, '26/01/2018', 103)



select case when CHARINDEX('/', '02/01/2018') > 0

 then convert(datetime, fecha_sal, 103) end

DECLARE @document varchar(64);
SELECT @document = '2018-01-26';
SELECT CHARINDEX('-', @document);
GO


DECLARE @RESULTADO AS INT
DECLARE @DOCUMENT AS VARCHAR(64)
DECLARE @N AS INT

SET @N = 0
SET @DOCUMENT = 'H/OLA /MUN/DO'

WHILE PATINDEX('%/%',@DOCUMENT)>0
BEGIN
    SET @RESULTADO = PATINDEX('%/%',@DOCUMENT) + @N
    SELECT @N = @RESULTADO  
    PRINT @RESULTADO
    
    SELECT @DOCUMENT = RIGHT(@DOCUMENT,LEN(@DOCUMENT)-PATINDEX('%/%',@DOCUMENT))
END




declare @lnmes int = 1
declare @lnanio int = 2018
select emergencia_id, estado, ciex1, fecha, hora, CIEX1, FECHA_ING, HORA_ING, fecha_salida, fecha_sal, HORA_SAL, DESTINO, CONDICION_EGRESO, PRIORIDAD,
CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA + CAST('00:10:00' AS DATETIME), 103), 103)  as fecha_final,
CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA  +  CAST('00:10:00' AS DATETIME)))) as hora_calculo_fina
   from  [SIGSALUD].[dbo].[EMERGENCIA] where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0'  








declare @lnmes int = 1
declare @lnanio int = 2018
update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('00:30:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('00:30:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J00%'

update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('00:30:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('00:30:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J02%'

update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('00:30:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('00:30:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J03%'


update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('00:30:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('00:30:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'R10%'


update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('00:30:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('00:30:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'R11%'


update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('00:30:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('00:30:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'A09%'



declare @lnmes int = 1
declare @lnanio int = 2018

update [SIGSALUD].[dbo].[EMERGENCIA]  set fecha_sal = CONVERT(varchar(10), convert(date, convert(datetime, fecha_ing, 103) + HORA_ing + CAST('03:00:00' AS DATETIME), 103), 103),
  HORA_SAL =  CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA_ing  +  CAST('03:00:00' AS DATETIME))))
where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and fecha_sal is null 






declare @lnmes int = 1
declare @lnanio int = 2018
select emergencia_id, estado, ciex1, fecha, hora, CIEX1, FECHA_ING, HORA_ING, fecha_salida, fecha_sal, HORA_SAL, DESTINO, CONDICION_EGRESO, PRIORIDAD
 from [SIGSALUD].[dbo].[EMERGENCIA]  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio 


declare @lnmes int = 1
declare @lnanio int = 2018
update [SIGSALUD].[dbo].[EMERGENCIA]  set HORA_ING = CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA  +  CAST('00:10:00' AS DATETIME))))
 where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J00%'
update [SIGSALUD].[dbo].[EMERGENCIA]  set HORA_ING = CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA  +  CAST('00:10:00' AS DATETIME))))
 where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J02%'
update [SIGSALUD].[dbo].[EMERGENCIA]  set HORA_ING = CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA  +  CAST('00:10:00' AS DATETIME))))
 where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J03%'
update [SIGSALUD].[dbo].[EMERGENCIA]  set HORA_ING = CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA  +  CAST('00:10:00' AS DATETIME))))
 where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and fecha_sal is null and CIEX1 LIKE 'J04%'
update [SIGSALUD].[dbo].[EMERGENCIA]  set HORA_ING = CONVERT(VARCHAR(5), convert(time, (convert(datetime, fecha_ing, 103) + HORA  +  CAST('00:10:00' AS DATETIME))))
 where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and fecha_sal is null 




update [SIGSALUD].[dbo].[EMERGENCIA] set HORA_ING = ''  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio




declare @lnmes int = 1
declare @lnanio int = 2018

select convert(datetime, a.fecha_ing, 103) + b.HORA as fecha_hora, fecha_atencion,
CONVERT(VARCHAR(5), convert(time, (convert(datetime, a.fecha_ing, 103) + b.HORA  +  CAST('00:10:00' AS DATETIME)))) as hora_calculo_final,
 a.EMERGENCIA_ID, a.estado, a.ciex1, a.fecha, fecha_ing, HORA_ING, b.hora as hora_enfermera, a.HORA_SAL, fecha_salida from [SIGSALUD].[dbo].[EMERGENCIA] A
 LEFT JOIN  [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  B on a.EMERGENCIA_ID = b.EMERGENCIA_ID
   where month(a.fecha) = @lnmes and year(a.fecha) = @lnanio and HORA_ING is null and B.TIPO_PROCESO = 'P06'
   and  a.CIEX1 <> '0' 
   
   
   




select emergencia_id, estado, CIEX1, FECHA_ING, HORA_ING, fecha_salida, HORA_SAL, DESTINO, CONDICION_EGRESO, PRIORIDAD   from  [SIGSALUD].[dbo].[EMERGENCIA] where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and PRIORIDAD is null order by fecha



/*
select emergencia_id, estado, CIEX1, FECHA_ING, HORA_ING, fecha_salida, HORA_SAL, DESTINO, CONDICION_EGRESO, PRIORIDAD   from  [SIGSALUD].[dbo].[EMERGENCIA] where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio
and CIEX1 <> '0' and destino = '06' order by fecha
*/


--4272


/* para ejecuar server */
declare @lnmes int = 1
declare @lnanio int = 2018
update [SIGSALUD].[dbo].[EMERGENCIA] set CONDICION_EGRESO = '03'  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and destino = '06'
update [SIGSALUD].[dbo].[EMERGENCIA] set CONDICION_EGRESO = '04'  where MONTH(fecha) = @lnmes and YEAR(fecha) = @lnanio and CIEX1 <> '0' and destino = '04'
update [SIGSALUD].[dbo].[EMERGENCIA] set destino = '12' where EMERGENCIA_ID ='18001287'
/***********************/

SELECT emergencia_id, estado, CIEX1, FECHA, HORA, FECHA_ING, HORA_ING, fecha_salida, FECHA_SAL,  HORA_SAL, DESTINO, CONDICION_EGRESO, PRIORIDAD  
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE EMERGENCIA_ID = '17057252'
 
 SELECT emergencia_id, estado, CIEX1, FECHA, HORA, FECHA_ING, HORA_ING, fecha_salida, FECHA_SAL, HORA_SAL, DESTINO, CONDICION_EGRESO, PRIORIDAD  
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE MONTH(FECHA) = 1 AND YEAR(FECHA) = 2018