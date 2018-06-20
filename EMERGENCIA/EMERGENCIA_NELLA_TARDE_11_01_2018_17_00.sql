
select EMERGENCIA_ID, estado, fecha, CIEX1, ESTADO, PRIORIDAD from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017
and prioridad = ''


select EMERGENCIA_ID, estado, fecha, CIEX1, ESTADO, PRIORIDAD from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017
and fecha_sal = ''  and CIEX1 <> '0'  order by CIEX1 



select EMERGENCIA_ID, estado, fecha, CIEX1, ESTADO, PRIORIDAD from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017
and prioridad = '' and CIEX1 <> '0'  and CIEX1 like 'J0%'


Prioridad 4





select EMERGENCIA_ID, estado, fecha, CIEX1, ESTADO, PRIORIDAD from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017
and prioridad = '(Ninguno)'  AND  CIEX1 <> '0'




select  fecha_sal, count(fecha_sal) as cuentas   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 and CIEX1 <> '0' GROUP BY fecha_sal 


and prioridad = ''  AND  CIEX1 <> '0'



AND CIEX1 like 'R1%'  ORDER BY CIEX1 


UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 4'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad = '' and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')


select EMERGENCIA_ID, estado, fecha, CIEX1, ESTADO, PRIORIDAD, fecha_sal, HORA_ING from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 and fecha_sal = '__/__/__  ' and CIEX1 <> '0'
order by CIEX1 


select EMERGENCIA_ID, estado, fecha, hora, fecha_ing, hora_ing, CIEX1, ESTADO, PRIORIDAD, fecha_sal, HORA_SAL,  HORA_ING from [SIGSALUD].[dbo].[EMERGENCIA] where 
month(fecha) = 12 and YEAR(fecha) = 2017  AND FECHA_SAL = '__/__/__  '  AND  CIEX1 <> '0' 


SELECT EMERGENCIA_ID,  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, 
   CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME) AS FECHA_HORA_INGRESO_UNIDA, 
   convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103) as fecha_salida_nuevo,
   convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME)))) as hora_salida_nuevo,
    FECHA_SAL, HORA_SAL, FECHA_ATENCION, HORA_ATEN   FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 12 and YEAR(fecha) = 2017
  AND FECHA_SAL = '__/__/__  '  AND  CIEX1 <> '0' 






/* para el servidor */

/* con prioridad vacia */
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 4'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad = '' and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')
update [SIGSALUD].[dbo].[EMERGENCIA] set prioridad = 'Prioridad 4' 
where month(fecha) = 12 and year(fecha) = 2017
and prioridad = '' and CIEX1 <> '0'  and CIEX1 like 'J0%'
update [SIGSALUD].[dbo].[EMERGENCIA] set prioridad = 'Prioridad 4' 
where month(fecha) = 12 and year(fecha) = 2017
and prioridad = ''  AND  CIEX1 <> '0'  AND CIEX1 like 'R1%' 
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 3'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad = ''  AND  CIEX1 <> '0' AND SUBSTRING(CIEX1,1,1) NOT IN ('E', 'H', 'K', 'L', 'M') AND CIEX1 NOT IN ('J84', 'J98.9')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 2'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad = ''  AND  CIEX1 <> '0'


/* con priodad ninguno */


UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 4'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad =  '(Ninguno)'  and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')
update [SIGSALUD].[dbo].[EMERGENCIA] set prioridad = 'Prioridad 4' 
where month(fecha) = 12 and year(fecha) = 2017
and prioridad =  '(Ninguno)'  and CIEX1 <> '0'  and CIEX1 like 'J0%'
update [SIGSALUD].[dbo].[EMERGENCIA] set prioridad = 'Prioridad 4' 
where month(fecha) = 12 and year(fecha) = 2017
and prioridad =  '(Ninguno)'   AND  CIEX1 <> '0'  AND CIEX1 like 'R1%' 
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 3'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad =  '(Ninguno)'   AND  CIEX1 <> '0' AND SUBSTRING(CIEX1,1,1) NOT IN ('E', 'H', 'K', 'L', 'M') AND CIEX1 NOT IN ('J84', 'J98.9')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 2'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad =  '(Ninguno)'   AND  CIEX1 <> '0'


update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_ing = '16/12/2017' where emergencia_id = '17054935'
update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_ing = '08/12/2017' where emergencia_id = '17053640'




/* fin de servidor */
