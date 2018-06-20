use BDPERSONAL
go

select * from RELOGDIGI where Codigo = '775049' and Fecha between convert(datetime, '2015-08-01', 101) and convert(datetime, '2015-08-31', 101) order by Fecha asc
/* select * from MAESTRO where NOMBRE like '%sosa%' */

select * from ASISTENCIA where Codigo = '084123' and MES = '8' and año = '2015' order by dia
select * from MAESTRO where Codigo = '084123' and MES = '8' and año = '2015' order by dia
select * from PERMISOS where Codigo = '084123' and MES = '8' and año = '2015' order by dia

select * from v_ASISTENCIA where Codigo = '084123' and MES = '8' and año = '2015' order by dia

select * from C_HORARIO


SELECT codigo,fecha,hora FROM RELOGDIGI WHERE CODIGO= '775049' AND YEAR(FECHA) = '2015' AND MONTH(FECHA) = '8' and Day(fecha) = '4'  order by fecha + Hora Asc