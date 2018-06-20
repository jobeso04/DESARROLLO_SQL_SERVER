select CONDICION_EGRESO, DESTINO  from  [SIGSALUD].[dbo].[EMERGENCIA]
where MONTH(fecha) = 12 and YEAR(fecha) = 2017 and  CONDICION_EGRESO = '0'



select ciex1, HORA_ING, FECHA_ING, HORA_SAL, fecha_sal from [SIGSALUD].[dbo].[EMERGENCIA]
where substring(CIEX1,1,1) = 'O' and MONTH(fecha) = 12 and YEAR(fecha) = 2017 


select ciex1, HORA_ING, FECHA_ING, HORA_SAL, fecha_sal from [SIGSALUD].[dbo].[EMERGENCIA]
where substring(CIEX1,1,1) = 'O' and MONTH(fecha) = 12 and YEAR(fecha) = 2017  and HORA_ING is null


select ciex1, HORA_ING, FECHA_ING, HORA_SAL, fecha_sal from [SIGSALUD].[dbo].[EMERGENCIA]
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and HORA_ING is null

/**********************/

select emergencia_id, ciex1,  (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)) as fecha_hora, 
  substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5) as hora_nueva,
  convert(nchar(10), fecha, 101) AS FECHA_NUEVA,
hora,
 HORA_ING, FECHA_ING, HORA_SAL, fecha_sal from [SIGSALUD].[dbo].[EMERGENCIA]
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and substring(CIEX1,1,1) IN ('A', 'J', 'S', 'R1%')  and HORA_ING is null




CIEX1='A' 'J' 'S' 'R1X.X' FECHA_ING=TODOS REEMPLAZAR FECHA_SAL = (FECHA_ING) Y HORA_SAL (HORA_ING + 30 MIN) 

/***************/



update [SIGSALUD].[dbo].[EMERGENCIA] set HORA_ING = substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5),
FECHA_ING = convert(nchar(10), fecha, 101)
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and substring(CIEX1,1,1) = 'O' and destino in ('01', '02', '09', '12') and HORA_ING is null



update [SIGSALUD].[dbo].[EMERGENCIA] set HORA_ING = substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5),
FECHA_ING = convert(nchar(10), fecha, 101)
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and  MONTH(fecha) = 12   and substring(CIEX1,1,1) IN ('A', 'J', 'S', 'R1%')  and HORA_ING is null





select emergencia_id, ciex1, HORA_ING, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)) as fecha_hora, 
  substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5) as hora_nueva,
hora, FECHA_ING, HORA_SAL, fecha_sal, DESTINO, CONDICION_EGRESO 
  from [SIGSALUD].[dbo].[EMERGENCIA] where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  
  and DESTINO IN ('02','01','09','12') AND CONDICION_EGRESO = '0'




CIEX1='OXX.X' DESTINO '02''01''09''12' REEMPLAZAR CONDICION_EGRESO '0' A CONDICION_EGRESO '01'



SELECT EMERGENCIA_ID,  NOMBRES, ESTADO, FECHA, HORA,CIEX1, CIEX4, FECHA_ING, HORA_ING, 
   CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME) AS FECHA_HORA_INGRESO_UNIDA, 
   convert(varchar(10),  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME), 103) as fecha_salida_nuevo,
   convert(varchar(5), (convert(time,  CONVERT(DATETIME, CAST(FECHA_ING AS DATETIME) + CAST(HORA_ING AS DATETIME))  + CAST('00:10:00' AS DATETIME)))) as hora_salida_nuevo,
    FECHA_SAL, HORA_SAL, FECHA_ATENCION, HORA_ATEN   FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE  month(fecha) = 11 and YEAR(fecha) = 2017
  AND FECHA_SAL = '__/__/__  '  AND  CIEX4 <> '0' AND FECHA_ATENCION  IS NULL




select emergencia_id, ciex1, HORA_ING, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)) as fecha_hora, 
  substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5) as hora_nueva,
hora,
 FECHA_ING, HORA_SAL, fecha_sal, convert(nchar(10), fecha, 101) as fecha_resultado from [SIGSALUD].[dbo].[EMERGENCIA]
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  





CIEX1='OXX.X' DESTINO '02''01''09''12' REEMPLAZAR CONDICION_EGRESO '0' A CONDICION_EGRESO '01'