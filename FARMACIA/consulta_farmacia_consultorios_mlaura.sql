/* medicamento e inzumos por consultorio */

use SIGSALUD
declare @lcfecha1 datetime = convert(datetime, '2016-01-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2016-12-31', 101)
 
select upper(nombre_item) as MEDICAMENTO, sum(cantidad) CANTIDAD   from v_KARDEX 
where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = 'F' and ESTADO = '3' and
TIPO_TRANSACCION NOT in ('IAN', 'IC1', 'IC2', 'IC3', 'ICJ', 'ICO', 'IDE', 'IDO', 'IIN', 'IPP', 'IPR', 'ITP', 'ITR',
 'SCJ', 'SPD', 'SPR', 'SRO', 'STE', 'STI', 'STN', 'STR', 'SVN') and consultorio in (select CONSULTORIO from consultorio WHERE LEN(CONSULTORIO) > 2 AND TIPO = 'C')
 group by NOMBRE_ITEM 