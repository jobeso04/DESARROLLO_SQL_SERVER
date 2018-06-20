use sigsalud

select CONVERT(date, fecha, 101) as FECHA, TOTAL, USUARIO, SYSINSERT AS OPERACION  from ordenc where fecha between convert(datetime, '2016-10-09', 101)   and convert(datetime, '2016-10-10', 101)  and usuario = 'NBALTUANO' order by SYSINSERT asc