use SIGSALUD
select CONSULTORIO, NOMBRE from consultorio WHERE LEN(CONSULTORIO) > 2 AND TIPO IN ('E', 'C', 'H') order by nombre asc

select * from ITEM where NOMBRE like 'oxi%'

select * from consultorio where TIPO in ('C', 'H') order by nombre asc

declare @lcfecha1 datetime = convert(datetime, '2017-01-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-01-30', 101)
DECLARE @lconsultorio varchar(13) = '4090'
declare @lcitem varchar(13) = '170649'

select NOMBRE_CONSULTORIO, SUM(CANTIDAD) AS TOTAL, 'M3' as UNIDAD  from v_KARDEX 
where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = 'F' and ITEM = @lcitem and ESTADO = '3' and
TIPO_TRANSACCION NOT in ('IAN', 'IC1', 'IC2', 'IC3', 'ICJ', 'ICO', 'IDE', 'IDO', 'IIN', 'IPP', 'IPR', 'ITP', 'ITR',
 'SCJ', 'SPD', 'SPR', 'SRO', 'STE', 'STI', 'STN', 'STR', 'SVN') GROUP BY NOMBRE_CONSULTORIO ORDER BY NOMBRE_CONSULTORIO ASC
 
 





SELECT * FROM TIPO_TRANSACCION WHERE TIPO_TRANSACCION NOT LIKE ''

SELECT * FROM TIPO_TRANSACCION ORDER BY TIPO_TRANSACCION ASC






select ITEM, OPERACION, FECHA, TIPO_TRANSACCION, NOMBRE_TRANSACCION, STOCK,* from v_KARDEX where FECHA between @lcfecha1 and @lcfecha2 AND  CONSULTORIO = @lconsultorio and ALMACEN = 'F'