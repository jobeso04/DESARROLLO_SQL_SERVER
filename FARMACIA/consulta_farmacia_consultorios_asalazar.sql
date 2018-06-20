use SIGSALUD
select CONSULTORIO, NOMBRE from consultorio order by NOMBRE asc


WHERE LEN(CONSULTORIO) > 2 AND TIPO IN ('E', 'C', 'H') order by nombre asc

select * from ITEM where NOMBRE like 'oxi%'

select * from consultorio where TIPO in ('C', 'H') order by nombre asc

declare @lcfecha1 datetime = convert(datetime, '2016-01-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2016-12-31', 101)
DECLARE @lconsultorio varchar(13) = '4090'
declare @lcitem varchar(13) = '170649'
 
select nombre_item, nombre_transaccion, cantidad, nombre_consultorio  from v_KARDEX 
where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = 'F' and ESTADO = '3' and
TIPO_TRANSACCION NOT in ('IAN', 'IC1', 'IC2', 'IC3', 'ICJ', 'ICO', 'IDE', 'IDO', 'IIN', 'IPP', 'IPR', 'ITP', 'ITR',
 'SCJ', 'SPD', 'SPR', 'SRO', 'STE', 'STI', 'STN', 'STR', 'SVN') and consultorio in ('3031', '3032', '3033', '3050', '3090')
    ORDER BY NOMBRE_CONSULTORIO, nombre_itre ASC
 
 





SELECT * FROM TIPO_TRANSACCION WHERE TIPO_TRANSACCION NOT LIKE ''

SELECT * FROM TIPO_TRANSACCION ORDER BY TIPO_TRANSACCION ASC






select ITEM, OPERACION, FECHA, TIPO_TRANSACCION, NOMBRE_TRANSACCION, STOCK,* from v_KARDEX where FECHA between @lcfecha1 and @lcfecha2 AND  CONSULTORIO = @lconsultorio and ALMACEN = 'F'