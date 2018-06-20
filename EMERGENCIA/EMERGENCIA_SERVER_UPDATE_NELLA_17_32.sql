UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL =  convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103)
WHERE month(fecha) = 12 and year(fecha) = 2017
and  FECHA_SAL = '__/__/__  '   and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')


UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL =  convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103)
WHERE month(fecha) = 12 and year(fecha) = 2017
and  FECHA_SAL = '__/__/__  '   and CIEX1 <> '0'  and CIEX1 like 'J0%'



UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL =  convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103)
WHERE month(fecha) = 12 and year(fecha) = 2017
and  FECHA_SAL = '__/__/__  '   and CIEX1 <> '0'  and CIEX1 like 'R1%'

update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_ing = '16/12/2017' where emergencia_id = '17054935'
update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_ing = '08/12/2017' where emergencia_id = '17053640'



UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL =  convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('12:00:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('12:00:00' AS DATETIME), 103)
WHERE month(fecha) = 12 and year(fecha) = 2017
and  FECHA_SAL = '__/__/__  '   and CIEX1 <> '0'  AND SUBSTRING(CIEX1,1,1) NOT IN ('E', 'H', 'K', 'L', 'M') AND CIEX1 NOT IN ('J84', 'J98.9')



UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL =  convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
HORA_SAL = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103)
WHERE month(fecha) = 12 and year(fecha) = 2017
and  FECHA_SAL = '__/__/__  '   and CIEX1 <> '0' 



select EMERGENCIA_ID, estado, fecha, hora, fecha_ing, hora_ing, CIEX1, ESTADO, PRIORIDAD, fecha_sal, HORA_SAL,  HORA_ING
 from [SIGSALUD].[dbo].[EMERGENCIA] where 
month(fecha) = 12 and YEAR(fecha) = 2017  AND FECHA_SAL = '__/__/__  '  AND  CIEX1 <> '0' 


update [SIGSALUD].[dbo].[EMERGENCIA] set HORA_ING = '16:12' where emergencia_id = '17054688'


select  fecha_sal, count(fecha_sal) as cuentas   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 and CIEX1 <> '0' GROUP BY fecha_sal 



select  PRIORIDAD, count(PRIORIDAD) as cuentas_PRI   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 and CIEX1 <> '0' GROUP BY PRIORIDAD


select  CIEX1, count(CIEX1) as cuentas_PRI   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017  GROUP BY CIEX1



select  DESTINO, CONDICION_EGRESO, CIEX1, CIEX4, ESTADO, FECHA, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, MEDICO1, PRIORIDAD, convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103) as fecha_sal,
convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME)))) as hora_sal   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL



SELECT EMERGENCIA_ID, FECHA, HORA, FECHA_SAL, HORA_SAL FROM [SIGSALUD].[dbo].[EMERGENCIA]  where FECHA_SAL IN ('12/12/7_  ')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL = '12/12/2017'  where EMERGENCIA_ID = '17054325'


UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET FECHA_SAL = '22/12/2017'  where EMERGENCIA_ID = '17055966'





select  DESTINO, CONDICION_EGRESO, CIEX1, CIEX4, ESTADO, FECHA, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, MEDICO1, PRIORIDAD, convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103) as fecha_sal,
convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103) as hora_sal   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL



select  DESTINO, CONDICION_EGRESO, CIEX1, CIEX4, ESTADO, FECHA, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, MEDICO1, PRIORIDAD 
   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL




/* ejemplo de substraer cadenas, en este caso fecha */
select  fecha, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, SUBSTRING(fecha_ing,1,2) as primera_letra_1_2_mes, 
SUBSTRING(fecha_ing,4,2) as primera_letra_4_5_dia, SUBSTRING(fecha_ing,7,4) as primera_letra_7_10_anio,
SUBSTRING(fecha_ing,4,2) + '/' + SUBSTRING(fecha_ing,1,2) + '/' + SUBSTRING(fecha_ing,7,4) as fecha_final,
sUBSTRING(fecha_ing,9,2) + '-' + SUBSTRING(fecha_ing,1,2) + '-' + SUBSTRING(fecha_ing,4,2) as  nueva_fecha

   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL
and convert(int, SUBSTRING(fecha_ing,4,2)) <> 12
order by fecha_ing desc

select substring('nela',4,1) as nombre


/*********************************//



select  emergencia_id, fecha, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, SUBSTRING(fecha_ing,1,2) as primera_letra_1_2_mes, 
SUBSTRING(fecha_ing,4,2) as primera_letra_4_5_dia, SUBSTRING(fecha_ing,7,4) as primera_letra_7_10_anio,
SUBSTRING(fecha_ing,4,2) + '/' + SUBSTRING(fecha_ing,1,2) + '/' + SUBSTRING(fecha_ing,7,4) as fecha_final,
sUBSTRING(fecha_ing,9,2) + '-' + SUBSTRING(fecha_ing,1,2) + '-' + SUBSTRING(fecha_ing,4,2) as  nueva_fecha

   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL
and convert(int, SUBSTRING(fecha_ing,4,2)) <> 12
order by fecha_ing desc


update [SIGSALUD].[dbo].[EMERGENCIA] set fecha_ing = SUBSTRING(fecha_ing,4,2) + '/' + SUBSTRING(fecha_ing,1,2) + '/' + SUBSTRING(fecha_ing,7,4) 
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL
and convert(int, SUBSTRING(fecha_ing,4,2)) <> 12




select  DESTINO, CONDICION_EGRESO, CIEX1, CIEX4, ESTADO, FECHA, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, MEDICO1, PRIORIDAD, convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103) as fecha_sal,
convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103)   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL





/* desde ai empiezo */
select  DESTINO, CONDICION_EGRESO, CIEX1, CIEX4, ESTADO, FECHA, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, MEDICO1, PRIORIDAD, convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103) as fecha_sal,
convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME)))) as hora_sal   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND CIEX1 <> '0' AND FECHA_SAL IS NULL



/* aqui fin */


/* inicio servidor */

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
hora_sal = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME))))
WHERE month(fecha) = 12 and year(fecha) = 2017
and FECHA_SAL IS NULL and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
hora_sal = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME))))
WHERE month(fecha) = 12 and year(fecha) = 2017
and FECHA_SAL IS NULL and CIEX1 <> '0'  and CIEX1 like 'J0%'

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
hora_sal = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME))))
where month(fecha) = 12 and year(fecha) = 2017
and FECHA_SAL IS NULL AND  CIEX1 <> '0'  AND CIEX1 like 'R1%' 

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
hora_sal = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME))))
WHERE month(fecha) = 12 and year(fecha) = 2017 
and FECHA_SAL IS NULL AND  CIEX1 <> '0' AND SUBSTRING(CIEX1,1,1) NOT IN ('E', 'H', 'K', 'L', 'M') AND CIEX1 NOT IN ('J84', 'J98.9')

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET fecha_sal = convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103),
hora_sal = convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME))))
WHERE month(fecha) = 12 and year(fecha) = 2017
and FECHA_SAL IS NULL  AND  CIEX1 <> '0'

/*** fin servidor */






select  DESTINO, CONDICION_EGRESO, CIEX1, CIEX4, ESTADO, FECHA, FECHA_ING, HORA_ING, FECHA_SAL, HORA_SAL, MEDICO1, PRIORIDAD, convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME), 103) as fecha_sal,
convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:30:00' AS DATETIME)))) as hora_sal   from [SIGSALUD].[dbo].[EMERGENCIA]
where month(fecha) = 12 and year(fecha) = 2017 AND FECHA_SAL IS NULL and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')






------------------------------

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 2'
WHERE month(fecha) = 12 and year(fecha) = 2017
and prioridad = ''  AND  CIEX1 <> '0'

