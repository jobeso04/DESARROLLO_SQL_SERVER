

/* servidor */

update [SIGSALUD].[dbo].[EMERGENCIA] set HORA_ING = substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5),
FECHA_ING = convert(nchar(10), fecha, 101)
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and substring(CIEX1,1,1) = 'O' and destino in ('01', '02', '09', '12') and HORA_ING is null


update [SIGSALUD].[dbo].[EMERGENCIA] set HORA_ING = substring(convert(nchar(10), convert(time, (fecha + CAST(HORA AS DATETIME) +  CAST('00:10:00' AS DATETIME)))),1,5),
FECHA_ING = convert(nchar(10), fecha, 101)
where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and  MONTH(fecha) = 12 and YEAR(fecha) = 2017  and substring(CIEX1,1,1) IN ('A', 'J', 'S', 'R1%')  and HORA_ING is null

update [SIGSALUD].[dbo].[EMERGENCIA] set CONDICION_EGRESO = '01' where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  
  and DESTINO IN ('02','01','09','12') AND CONDICION_EGRESO = '0'
  
  update [SIGSALUD].[dbo].[EMERGENCIA] set CONDICION_EGRESO = '04' where  MONTH(fecha) = 12 and YEAR(fecha) = 2017  
  and DESTINO IN ('04') AND CONDICION_EGRESO = '0'


